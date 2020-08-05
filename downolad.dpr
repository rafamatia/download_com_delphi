program downolad;

uses
  Vcl.Forms,
  untSolicitarDownload in 'telas\untSolicitarDownload.pas' {uFrmSolicitarDownload},
  uFabricaConexao in 'classes\uFabricaConexao.pas',
  uMensagens in 'units\uMensagens.pas',
  uRotinasComuns in 'units\uRotinasComuns.pas',
  uParametrosConexao in 'classes\uParametrosConexao.pas',
  uDAOConexao in 'classes\uDAOConexao.pas',
  uLogDownload in 'classes\uLogDownload.pas',
  uLogDownloadDAO in 'classes\uLogDownloadDAO.pas',
  untHistoricoDownload in 'telas\untHistoricoDownload.pas' {uFrmHistoricoDownload};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuFrmSolicitarDownload, uFrmSolicitarDownload);
  Application.Run;
end.
