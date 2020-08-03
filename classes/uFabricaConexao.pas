unit uFabricaConexao;

interface

uses
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Async,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Option,
  FireDAC.VCLUI.Wait,
  FireDAC.UI.Intf,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.DApt;

type
  TFabricaConexao = class
  private
    class var FDConnection: TFDConnection;
  public
    class function obterConexao: TFDConnection;
  end;

implementation

{ TFabricaConexao }

uses uParametrosConexao, System.SysUtils, Vcl.Forms,
  Vcl.Dialogs, uRotinasComuns, uMensagens;

class function TFabricaConexao.obterConexao: TFDConnection;
var
  OParametroConexao: TParametrosConexao;
begin
  if not FileExists(strCaminhoConfiguracoes) then
  begin
    MensagemAviso('Arquivo de Inicialização não Encontrado!' + sLineBreak +
      'Contate o Suporte.');
    Result := nil;
    Exit;
  end;

  OParametroConexao := TParametrosConexao.Create(strCaminhoConfiguracoes);
  try
    FDConnection := TFDConnection.Create(nil);
    FDConnection.Params.Values['Database'] := OParametroConexao.DataBase;
    FDConnection.Params.Values['DriverName'] := 'SQLite';
    FDConnection.Params.Values['DriverID'] := 'SQLite';
    FDConnection.Params.Values['LokingModel'] := 'Normal';
    FDConnection.Params.Values['User_Name'].Empty;
    FDConnection.Params.Values['Password'].Empty;
    FDConnection.FormatOptions.SortLocale := 0;
    FDConnection.FormatOptions.StrsTrim := False;
    FDConnection.Connected := True;
    Result := FDConnection;
  finally
    FreeAndNil(OParametroConexao);
  end;
end;

end.
