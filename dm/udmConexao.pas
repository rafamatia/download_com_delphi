unit udmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, Vcl.Forms, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdmConexao = class(TDataModule)
    FDConexaoBanco: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    qryConsultaLogDownload: TFDQuery;
    dsConsultaLogDownload: TDataSource;
    qryConsultaLogDownloadCODIGO: TFMTBCDField;
    qryConsultaLogDownloadURL: TStringField;
    qryConsultaLogDownloadDATAINICIO: TDateField;
    qryConsultaLogDownloadDATAFIM: TDateField;
    qryConsultaLogDownloadPERCENTUAL: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure procConexaoBanco;
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uMensagens, uRotinasComuns, uParametrosConexao;

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  procCarregarVariavelCaminhoConfiguracoes;
  procConexaoBanco;
end;

procedure TdmConexao.procConexaoBanco;
var
  OParametroConexao: TParametrosConexao;
begin
  if not FileExists(strCaminhoConfiguracoes) then
  begin
    MensagemAviso('Arquivo de Inicialização não Encontrado!' + sLineBreak +
      'Contate o Suporte.');
    Application.terminate;
  end;

  if (FDConexaoBanco.Connected) then
    FDConexaoBanco.Connected := false;

  OParametroConexao := TParametrosConexao.Create(strCaminhoConfiguracoes);
  try
    try
      if (trim(OParametroConexao.DataBase) = EmptyStr) then
      begin
        MensagemAviso('Caminho do banco de dados não informado!' + sLineBreak +
          'Realize a configuração "DATABASE" no arquivo "' +
          strCaminhoConfiguracoes + '", e tente novamente!');
        Abort;
      end;
    except
      Application.terminate;
    end;

    try
      if not(FDConexaoBanco.Connected) then
      begin
        FDConexaoBanco.Params.Values['Database'] := OParametroConexao.DataBase;;
        FDConexaoBanco.Params.Values['DriverName'] := 'SQLite';
        FDConexaoBanco.Params.Values['DriverID'] := 'SQLite';
        FDConexaoBanco.Params.Values['LokingModel'] := 'Normal';
        FDConexaoBanco.Params.Values['User_Name'].Empty;
        FDConexaoBanco.Params.Values['Password'].Empty;
        FDConexaoBanco.FormatOptions.SortLocale := 0;
        FDConexaoBanco.FormatOptions.StrsTrim := false;
      end;

      FDConexaoBanco.Connected := True;
    except
      on E: Exception do
      begin
        MensagemErro
          ('Erro ao conectar com o banco de dados. Entre em contato com o suporte técnico!'
          + sLineBreak + sLineBreak + 'Detalhes Técnicos:' + sLineBreak +
          E.Message);
        Application.terminate;
      end;
    end;
  finally
    FreeAndNil(OParametroConexao);
  end;
end;

end.
