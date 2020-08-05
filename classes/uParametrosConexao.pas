unit uParametrosConexao;

interface

type
  TParametrosConexao = class
  private
    FDatabase: string;
    FArquivoConfiguracao: string;
    procedure procCarregarParametros;
  public
    constructor Create(ACaminhoArquivoConfiguracao: string);
    property Database: string read FDatabase write FDatabase;
    property ArquivoConfiguracao: string read FArquivoConfiguracao
      write FArquivoConfiguracao;
  end;

implementation

uses
  uRotinasComuns, StrUtils, SysUtils;

{ TParametrosConexao }

procedure TParametrosConexao.procCarregarParametros;
begin
  Database := funcLerArquivoINI(ArquivoConfiguracao, 'ACESSOAOBANCO',
    'DATABASE');

  if (not(FileExists(Database))) then
    raise Exception.Create
      ('O banco de dados não existe no caminho informado no arquivo config.ini!'
      + sLineBreak +
      'Verifique corretamente onde banco de dados se encontra e tente novamente, caso o erro persista entre em contado com o suporte técnico!');
end;

constructor TParametrosConexao.Create(ACaminhoArquivoConfiguracao: string);
begin
  FArquivoConfiguracao := ACaminhoArquivoConfiguracao;
  procCarregarParametros;
  inherited Create;
end;

end.
