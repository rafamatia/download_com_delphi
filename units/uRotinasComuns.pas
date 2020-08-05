unit uRotinasComuns;

interface

uses
  Windows, SysUtils, ComCtrls, Menus, Classes, Controls,
  Forms, Registry, Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Graphics, Vcl.ExtCtrls, System.IniFiles;

// ROTINA QUE SETA O FOCO EM UM CAMPO PASSADO COMO PARAMETRO
procedure procSetarFoco(const AComponente: TWinControl;
  const ASelecionarTexto: boolean = True);

function funcRecuperarCaminhoConfiguracoesDoBanco: String;

function funcLerArquivoINI(const AArquivo, ASessao, AChave: string): string;

implementation

uses uMensagens;

procedure procSetarFoco(const AComponente: TWinControl;
  const ASelecionarTexto: boolean);
begin
  try
    if (AComponente = nil) then
      exit;

    if AComponente.CanFocus then
      AComponente.SetFocus;

    if (not(ASelecionarTexto)) then
      exit;

    if (AComponente is TLabeledEdit) then
      TLabeledEdit(AComponente).SelectAll;
  except
    on E: Exception do
      MensagemErro('Erro ao tentar focar no componente: ' + AComponente.Name);
  end;
end;

function funcLerArquivoINI(const AArquivo, ASessao, AChave: string): string;
var
  iniArq: TIniFile;
begin
  try
    iniArq := TIniFile.Create(AArquivo);
    result := iniArq.ReadString(ASessao, AChave, EmptyStr);
  finally
    FreeAndNil(iniArq);
  end;
end;

function funcRecuperarCaminhoConfiguracoesDoBanco: String;
begin
  result := ExtractFilePath(Application.ExeName) + 'config.ini';
end;

end.
