unit untSolicitarDownload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Samples.Gauges, Data.DB, Vcl.Grids, Vcl.DBGrids, FileCtrl,
  uDownload;

type
  TuFrmSolicitarDownload = class(TForm)
    pnlBotoes: TPanel;
    btnIniciarDownload: TBitBtn;
    pnlURL: TPanel;
    ledtUrl: TLabeledEdit;
    btnFechar: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    svdDiretorio: TSaveDialog;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIniciarDownloadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    ODownload: TDownload;
  public
    { Public declarations }
    procedure procConsulta;
  end;

var
  uFrmSolicitarDownload: TuFrmSolicitarDownload;

implementation

{$R *.dfm}

uses uMensagens, uRotinasComuns, udmConexao;

procedure TuFrmSolicitarDownload.BitBtn1Click(Sender: TObject);
begin
  if Assigned(ODownload) then
  begin
    if (not(ODownload.Finished)) then
      ODownload.Suspend;
  end;
end;

procedure TuFrmSolicitarDownload.btnFecharClick(Sender: TObject);
begin
  if Assigned(ODownload) then
  begin
    if (not(ODownload.Finished)) then
    begin
      if (not(Pergunta('Existem downloads em andamento, deseja interrompe-lo?'))) then
        Abort;
    end;
  end;
  Close;
end;

procedure TuFrmSolicitarDownload.btnIniciarDownloadClick(Sender: TObject);
var
  strArquivo: string;
begin
  if (Trim(ledtUrl.Text) = EmptyStr) then
  begin
    MensagemAviso('Atenção! O campo "URL" deve ser informado.' + sLineBreak +
      'Verifique se a URL foi informada e tente novamente.');
    procSetarFoco(ledtUrl);
    Abort;
  end;

  try
    strArquivo := ExtractFileName(StringReplace(Trim(ledtUrl.Text), '/', '\',
      [rfReplaceAll])); // Recuperando o nome do arquivo
    svdDiretorio.InitialDir := ExtractFilePath(Application.ExeName) +
      'downloads';;
    svdDiretorio.FileName := strArquivo;
    if svdDiretorio.Execute then
    begin
      if (svdDiretorio.FileName <> EmptyStr) then
      begin
        ODownload := TDownload.Create(True);
        with ODownload do
        begin
          Codigo := 0;
          URL := ledtUrl.Text;
          CaminhoParaSalvar := svdDiretorio.FileName;
          Resume;
        end;
      end;
    end;
  except
    on E: Exception do
      MensagemErro('Erro ao realizar o download!' + sLineBreak +
        'Por favor, revise o link informado para o download e tente novamente. Caso o erro persista, entre em contato com o suporte.'
        + sLineBreak + sLineBreak + 'Detalhes Técnicos:' + sLineBreak +
        E.Message)
  end;
end;

procedure TuFrmSolicitarDownload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TuFrmSolicitarDownload.FormShow(Sender: TObject);
begin
  procConsulta;
  procSetarFoco(ledtUrl);
end;

procedure TuFrmSolicitarDownload.procConsulta;
begin
  if (not(dmConexao.qryConsultaLogDownload.Active)) then
    dmConexao.qryConsultaLogDownload.Open
  else
    dmConexao.qryConsultaLogDownload.Refresh;
end;

end.
