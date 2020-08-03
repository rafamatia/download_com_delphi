unit uRotinasComuns;

interface

uses
  Windows, SysUtils, ComCtrls, Menus, Classes, Controls,
  Forms, Registry, Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Graphics, Vcl.ExtCtrls, System.IniFiles;

var
  strCaminhoConfiguracoes: String;

// ROTINA QUE SETA O FOCO EM UM CAMPO PASSADO COMO PARAMETRO
procedure procSetarFoco(const AComponente: TWinControl;
  const ASelecionarTexto: boolean = True);

procedure procCarregarVariavelCaminhoConfiguracoes;

function funcLerArquivoINI(const AArquivo, ASessao, AChave: string): string;



implementation

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

procedure procCarregarVariavelCaminhoConfiguracoes;
begin
  strCaminhoConfiguracoes := ExtractFilePath(Application.ExeName) + 'config.ini';
end;

end.
