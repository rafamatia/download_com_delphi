program downolad;

uses
  Vcl.Forms,
  untSolicitarDownload in 'telas\untSolicitarDownload.pas' {uFrmSolicitarDownload},
  uFabricaConexao in 'classes\uFabricaConexao.pas',
  uMensagens in 'units\uMensagens.pas',
  uRotinasComuns in 'units\uRotinasComuns.pas',
  udmConexao in 'dm\udmConexao.pas' {dmConexao: TDataModule},
  uParametrosConexao in 'classes\uParametrosConexao.pas',
  uDAOConexao in 'classes\uDAOConexao.pas',
  uDownload in 'classes\uDownload.pas',
  uLogDownload in 'classes\uLogDownload.pas',
  uLogDownloadDAO in 'classes\uLogDownloadDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TuFrmSolicitarDownload, uFrmSolicitarDownload);
  Application.Run;
end.
