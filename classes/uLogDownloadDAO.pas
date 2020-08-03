unit uLogDownloadDAO;

interface

uses uDAOConexao, System.SysUtils, FireDAC.Stan.Param, System.Classes,
  uLogDownload;

type
  TLogDownloadDAO = class(TDAOConexao)
  private
  public
    function funcInserirOuAtualizar(ALogDownload: TLogDownload): Boolean;
    function funcProximoID: Double;
  end;

implementation

{ TLogDownloadDAO }

uses uMensagens;

function TLogDownloadDAO.funcInserirOuAtualizar(ALogDownload
  : TLogDownload): Boolean;
begin
  Result := False;
  Qry.Active := False;
  Qry.SQL.Clear;
  try
    Qry.SQL.Text :=
      'INSERT OR REPLACE INTO LOGDOWNLOAD (CODIGO,  URL,  DATAINICIO,  DATAFIM,  PERCENTUAL) '
      + ' VALUES (:CODIGO, :URL, :DATAINICIO, :DATAFIM, :PERCENTUAL) ';
    Qry.ParamByName('CODIGO').AsFloat := ALogDownload.CODIGO;
    Qry.ParamByName('URL').AsString := ALogDownload.URL;
    Qry.ParamByName('DATAINICIO').AsDateTime := ALogDownload.DATAINICIO;
    Qry.ParamByName('DATAFIM').AsDateTime := ALogDownload.DATAFIM;
    Qry.ParamByName('PERCENTUAL').AsInteger := ALogDownload.PERCENTUAL;

    if (ALogDownload.DATAFIM = 0) then
      Qry.ParamByName('DATAFIM').Clear;

    Qry.ExecSql;
    Result := True;
  except
    on E: Exception do
      MensagemErro('Erro ao inserir/atualizar o registro!' + sLineBreak +
        sLineBreak + 'Detalhes Técnicos:' + sLineBreak + E.Message)
  end;
end;

function TLogDownloadDAO.funcProximoID: Double;
begin
  Result := 1;
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Text := ' SELECT max(A.CODIGO) as ID from LOGDOWNLOAD A ';
    Qry.Open;

    if Qry.FieldByName('ID').IsNull then
      exit;

    Result := Qry.FieldByName('ID').AsFloat + 1;
  except
    on E: Exception do
      MensagemErro('Não foi possível recuperar o ID para este download!' +
        sLineBreak + sLineBreak + 'Detalhes técnicos:' + sLineBreak +
        E.Message);
  end;
end;

end.
