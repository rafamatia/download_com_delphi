unit uDAOConexao;

interface

uses uFabricaConexao, FireDAC.Comp.Client, System.SysUtils;

type
  TDAOConexao = class
  protected
    Conexao: TFDConnection;
    Qry: TFDQuery;
  public
    Constructor Create;
    Destructor Destroy; override;
  end;

implementation

{ TDAOConexao }

constructor TDAOConexao.Create;
begin
  Conexao := TFabricaConexao.obterConexao;
  Qry := TFDQuery.Create(nil);
  Qry.Connection := Conexao;
end;

destructor TDAOConexao.Destroy;
begin
  FreeAndNil(Qry);
  Conexao.Connected := False;
  FreeAndNil(Conexao);
  inherited;
end;

end.
