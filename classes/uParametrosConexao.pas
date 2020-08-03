unit uParametrosConexao;

interface

type
  TParametrosConexao = class
  private
    FDatabase: string;
    FArquivoConfiguracao: string;
    procedure procCarregarParametros;
  protected
  public
    constructor Create(ACaminhoArquivoConfiguracao: string);
    property Database: string read FDatabase write FDatabase;
    property ArquivoConfiguracao: string read FArquivoConfiguracao
      write FArquivoConfiguracao;
  published
  end;

implementation

uses
  uRotinasComuns, StrUtils, SysUtils;

{ TParametrosConexao }

procedure TParametrosConexao.procCarregarParametros;
begin
  Database := funcLerArquivoINI(ArquivoConfiguracao, 'ACESSOAOBANCO',
    'DATABASE');
end;

constructor TParametrosConexao.Create(ACaminhoArquivoConfiguracao: string);
begin
  inherited Create;
  FArquivoConfiguracao := ACaminhoArquivoConfiguracao;
  procCarregarParametros;
end;

end.
