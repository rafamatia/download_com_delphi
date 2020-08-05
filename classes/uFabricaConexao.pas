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
  strCaminhoConfiguracoes: String;
begin
  strCaminhoConfiguracoes := funcRecuperarCaminhoConfiguracoesDoBanco;

  try
    if not FileExists(strCaminhoConfiguracoes) then
      raise Exception.Create('Arquivo de Inicialização não Encontrado!' +
        sLineBreak + 'Contate o Suporte.');

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
      if Assigned(OParametroConexao) then
        FreeAndNil(OParametroConexao);
    end;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao criar o componente de conexão com o banco de dados!' +
        sLineBreak + sLineBreak + 'Informações Técnicas:' + sLineBreak +
        E.Message);
  end;
end;

end.
