unit untSolicitarDownload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Samples.Gauges, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.Threading, uLogDownload, uLogDownloadDAO,
  IdHTTP, IdComponent;

type
  TuFrmSolicitarDownload = class(TForm)
    pnlBotoes: TPanel;
    pnlURL: TPanel;
    ledtUrl: TLabeledEdit;
    svdDiretorio: TSaveDialog;
    btnPararDownload: TBitBtn;
    btnExibirMensagem: TBitBtn;
    gProgresso: TGauge;
    btnExibirHistoricoDownload: TBitBtn;
    btnIniciarDownload: TBitBtn;
    btnFechar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarDownloadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPararDownloadClick(Sender: TObject);
    procedure btnExibirMensagemClick(Sender: TObject);
    procedure btnExibirHistoricoDownloadClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    tskDownload: ITask;
    OLogDownload: TLogDownload;
    OLogDownloadDAO: TLogDownloadDAO;

    procedure Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure WorkEnd(ASender: TObject; AWorkMode: TWorkMode);

    procedure procAtualizarProgresso(AProgresso, AMaximo: Integer);
  public
    { Public declarations }
    // procedure procConsulta;
  end;

var
  uFrmSolicitarDownload: TuFrmSolicitarDownload;

implementation

{$R *.dfm}

uses uMensagens, uRotinasComuns, untHistoricoDownload;

procedure TuFrmSolicitarDownload.btnPararDownloadClick(Sender: TObject);
begin
  if (not(Assigned(tskDownload))) then
    Exit;
  tskDownload.Cancel;
end;

procedure TuFrmSolicitarDownload.btnExibirHistoricoDownloadClick
  (Sender: TObject);
begin
  uFrmHistoricoDownload := TuFrmHistoricoDownload.Create(Self);
  // cria o form uFrmHistoricoDownload
  try
    uFrmHistoricoDownload.ShowModal; // abre o form
  finally
    FreeAndNil(uFrmHistoricoDownload);
    // depois de fechar destroi e limpa a variavel
  end;
end;

procedure TuFrmSolicitarDownload.btnExibirMensagemClick(Sender: TObject);
begin
  if (not(Assigned(tskDownload))) then
    Exit;

  if (tskDownload.Status = TTaskStatus.Running) then
    MensagemInformacao('Download em processamento!' + sLineBreak +
      'Download em ' + FormatFloat('###,###,##0%', gProgresso.PercentDone) +
      ', até o momento.');
end;

procedure TuFrmSolicitarDownload.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TuFrmSolicitarDownload.btnIniciarDownloadClick(Sender: TObject);
var
  strArquivo: string;
  boolContinue: boolean;
  strCaminhoArq: string;
begin
  strCaminhoArq := EmptyStr;
  if (Trim(ledtUrl.Text) = EmptyStr) then
  begin
    MensagemAviso('Atenção! O campo "URL" deve ser informado.' + sLineBreak +
      'Verifique se a URL foi informada e tente novamente.');
    procSetarFoco(ledtUrl);
    Abort;
  end;

  strArquivo := ExtractFileName(StringReplace(Trim(ledtUrl.Text), '/', '\',
    [rfReplaceAll]));
  svdDiretorio.InitialDir := ExtractFilePath(Application.ExeName) +
    'downloads';;
  svdDiretorio.FileName := strArquivo;
  if svdDiretorio.Execute then
  begin
    strCaminhoArq := svdDiretorio.FileName;
    boolContinue := (svdDiretorio.FileName <> EmptyStr);
  end
  else
    boolContinue := False;

  if (not(boolContinue)) then
  begin
    MensagemAviso
      ('Atenção! Para que realizar o download é necessário que seja selecionado o caminho onde o arquivo ficará salvo.');
    Abort;
  end;

  try
    btnIniciarDownload.Enabled := False;
    if (OLogDownload = nil) then
      OLogDownload := TLogDownload.Create;

    if (OLogDownloadDAO = nil) then
      OLogDownloadDAO := TLogDownloadDAO.Create;

    OLogDownload.CODIGO := 0;
    OLogDownload.CaminhoParaSalvar := strCaminhoArq;
    OLogDownload.URL := Trim(ledtUrl.Text);

    tskDownload := TTask.Run(
      procedure
      var
        flsArquivoDownload: TFileStream;
        IndyHTTP: TIdHTTP;
      begin
        IndyHTTP := TIdHTTP.Create(nil);
        try
          flsArquivoDownload := TFileStream.Create
            (OLogDownload.CaminhoParaSalvar, fmCreate);
          try
            IndyHTTP.OnWork := Work;
            IndyHTTP.OnWorkBegin := WorkBegin;
            IndyHTTP.OnWorkEnd := WorkEnd;
            IndyHTTP.Get(OLogDownload.URL, flsArquivoDownload);
          finally
            FreeAndNil(flsArquivoDownload);
            FreeAndNil(IndyHTTP);
          end;
        except
          on E: EIdUnknownProtocol do
          begin
            procAtualizarProgresso(0, 0);
            MensagemErro
              ('URL Inválida! Por favor, revise o link informado para o download e tente novamente. Caso o erro persista, entre em contato com o suporte técnico.'
              + sLineBreak + sLineBreak + 'Detalhes Técnicos:' + sLineBreak +
              E.Message)
          end;
          on E: EAbort do
          begin
            if (tskDownload.Status = TTaskStatus.Canceled) then
              MensagemAviso('Download cancelado pelo usuários!');
          end;
          on E: Exception do
          begin
            MensagemErro('Erro ao realizar o download!' + sLineBreak +
              'Por favor, revise o link informado para o download e tente novamente. Caso o erro persista, entre em contato com o suporte técnico.'
              + sLineBreak + sLineBreak + 'Detalhes Técnicos:' + sLineBreak +
              E.Message);
          end;
        end;
      end);
  except
    on E: Exception do
      MensagemErro('Erro ao realizar o download!' + sLineBreak + sLineBreak +
        'Detalhes Técnicos:' + sLineBreak + E.Message)
  end;
end;

procedure TuFrmSolicitarDownload.FormClose(Sender: TObject;
var Action: TCloseAction);
var
  boolFechar: boolean;
begin
  boolFechar := False;
  if (not(Assigned(tskDownload))) then
    boolFechar := True;

  if (not(boolFechar)) and (tskDownload.Status = TTaskStatus.Running) and
    (not(Pergunta('“Existe um download em andamento, deseja interrompe-lo?')))
  then
    Abort;

  if (not(boolFechar)) and (not(boolFechar)) and
    (tskDownload.Status = TTaskStatus.Running) then
    btnPararDownloadClick(Sender);

  try
    if (not(boolFechar)) and (tskDownload.Status = TTaskStatus.Canceled) then
      tskDownload.CheckCanceled;
  except
    MensagemAviso('Download cancelado pelo usuários!');
  end;

  if (OLogDownload <> nil) then
    FreeAndNil(OLogDownload);

  if (OLogDownloadDAO <> nil) then
    FreeAndNil(OLogDownloadDAO);

  Application.Terminate;
end;

procedure TuFrmSolicitarDownload.FormShow(Sender: TObject);
begin
  procSetarFoco(ledtUrl);
end;

procedure TuFrmSolicitarDownload.procAtualizarProgresso(AProgresso,
  AMaximo: Integer);
begin
  if AProgresso > 0 then
    gProgresso.Progress := AProgresso
  else
    gProgresso.Progress := 0;

  if AMaximo > 0 then
    gProgresso.MaxValue := AMaximo;

  Application.ProcessMessages;
end;

procedure TuFrmSolicitarDownload.Work(ASender: TObject; AWorkMode: TWorkMode;
AWorkCount: Int64);
begin
  if (tskDownload.Status = TTaskStatus.Canceled) then
    Abort;

  procAtualizarProgresso(AWorkCount, 0);
end;

procedure TuFrmSolicitarDownload.WorkBegin(ASender: TObject;
AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  procAtualizarProgresso(0, AWorkCountMax);

  if (not(Assigned(OLogDownload))) or (OLogDownload = nil) then
    Exit;

  OLogDownload.CODIGO := 0;
  OLogDownload.DATAINICIO := Date;
  OLogDownload.DATAFIM := 0;
  OLogDownloadDAO.procInserirOuAtualizar(OLogDownload);
end;

procedure TuFrmSolicitarDownload.WorkEnd(ASender: TObject;
AWorkMode: TWorkMode);
begin
  procAtualizarProgresso(0, 0);

  if (not(Assigned(OLogDownload))) or (OLogDownload = nil) then
    Exit;

  btnIniciarDownload.Enabled := True;
  if (tskDownload.Status = TTaskStatus.Canceled) then
    Exit;

  OLogDownload.DATAFIM := Date;
  OLogDownloadDAO.procInserirOuAtualizar(OLogDownload);

  MensagemInformacao('Seu download foi concluído com sucesso!');
end;

end.
