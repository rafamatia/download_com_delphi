unit uDownload;

interface

uses
  Classes, System.SysUtils, IdHTTP, IdComponent, Vcl.Dialogs, Vcl.Controls,
  uLogDownload, uLogDownloadDAO;

type
  { CRIAÇÃO DE UMA THREAD }
  TDownload = class(TThread)
  protected
    procedure Execute; override;
    procedure procDownload;
    { PROCEDIMENTOS UTILIZADOS PARA ESPECIFICAR O QUE SERÁ FEITO NAS ETAPAS:
      WorkBegin = INICIO DA TAREFA
      Work = DURANTE A TAREFA
      WorkEnd = FINAL DA TAREFA }
    procedure Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    FCodigo: Double;
    FURL: String;
    FCaminhoParaSalvar: String;
    FDataInicio: TDate;
    FDataFim: TDate;
    FPercentual: Integer;
    FBytesToTransfer: Int64;
    OLogDownload: TLogDownload;
    OLogDownloadDAO: TLogDownloadDAO;
    procedure procRecuperarProximoID;
    procedure procAtualizarDadosClasseLogDownload;
  public
    property Codigo: Double read FCodigo write FCodigo;
    property CaminhoParaSalvar: String read FCaminhoParaSalvar
      write FCaminhoParaSalvar;
    property URL: String read FURL write FURL;
    property DataInicio: TDate read FDataInicio write FDataInicio;
    property DataFim: TDate read FDataFim write FDataFim;
    property Percentual: Integer read FPercentual write FPercentual;
    property BytesToTransfer: Int64 read FBytesToTransfer;
    property Terminated;
  end;

implementation

uses untSolicitarDownload, uMensagens;

{ TDownload }

procedure TDownload.Execute;
begin
  inherited;
  Sleep(1);
  Priority := tpNormal;
  FreeOnTerminate := True;

  OLogDownload := TLogDownload.Create;
  OLogDownloadDAO := TLogDownloadDAO.Create;
  try
    If (Not(Terminated)) Then
    begin
      if (FURL <> EmptyStr) and (CaminhoParaSalvar <> EmptyStr) then
      begin
        procRecuperarProximoID;
        procAtualizarDadosClasseLogDownload;
        procDownload;
      end;
    end;
  finally
    Freeandnil(OLogDownload);
    Freeandnil(OLogDownloadDAO);
    ShowMessage('Download Completo!');
  end;
end;

procedure TDownload.procAtualizarDadosClasseLogDownload;
begin
  OLogDownload.Codigo := Self.Codigo;
  OLogDownload.URL := Self.URL;
  OLogDownload.DataInicio := Self.DataInicio;
  OLogDownload.DataFim := Self.DataFim;
  OLogDownload.Percentual := Self.Percentual;
end;

procedure TDownload.procDownload;
var
  flsArquivoDownload: TFileStream;
  IndyHTTP: TIdHTTP;
begin
  FBytesToTransfer := 0;
  IndyHTTP := TIdHTTP.Create(uFrmSolicitarDownload);
  try
    flsArquivoDownload := TFileStream.Create(CaminhoParaSalvar, fmCreate);
    try
      with IndyHTTP do
      begin
        OnWork := Work;
        OnWorkBegin := WorkBegin;
        OnWorkEnd := WorkEnd;
      end;
      IndyHTTP.Get(URL, flsArquivoDownload);
    finally
      Freeandnil(flsArquivoDownload);
      Freeandnil(IndyHTTP);
    end;
  except
    on e: Exception do
      MensagemErro('Erro ao realizar o download!' + sLineBreak + sLineBreak +
        'Detalhes Técnicos:' + sLineBreak + e.Message)
  end;
end;

procedure TDownload.procRecuperarProximoID;
begin
  if Codigo <> 0 then
    exit;

  try
    Codigo := OLogDownloadDAO.funcProximoID;
  except
    on e: Exception do
      MensagemErro('Não foi possível recuperar o ID para este download!' +
        sLineBreak + sLineBreak + 'Detalhes técnicos:' + sLineBreak +
        e.Message);
  end;
end;

procedure TDownload.Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  { Evento interno responsável por informar o progresso atual }
  if (BytesToTransfer = 0) then
    Percentual := 0
  else
    Percentual := Round((AWorkCount / BytesToTransfer) * 100);

  procAtualizarDadosClasseLogDownload;
  OLogDownloadDAO.funcInserirOuAtualizar(OLogDownload);
  uFrmSolicitarDownload.procConsulta;
end;

procedure TDownload.WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  FBytesToTransfer := AWorkCountMax;
  DataInicio := Date;
  DataFim := 0;
  Percentual := 0;
  procAtualizarDadosClasseLogDownload;
  OLogDownloadDAO.funcInserirOuAtualizar(OLogDownload);
  uFrmSolicitarDownload.procConsulta;
end;

procedure TDownload.WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  DataFim := Date;
  procAtualizarDadosClasseLogDownload;
  OLogDownloadDAO.funcInserirOuAtualizar(OLogDownload);
  uFrmSolicitarDownload.procConsulta;
end;

end.
