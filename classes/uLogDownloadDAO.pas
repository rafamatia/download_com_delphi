unit uLogDownloadDAO;

interface

uses uDAOConexao, System.SysUtils, FireDAC.Stan.Param, System.Classes,
  uLogDownload;

type
  TLogDownloadDAO = class(TDAOConexao)
  private
  public
    procedure procInserirOuAtualizar(ALogDownload: TLogDownload);
    function funcProximoID: Double;
  end;

implementation

{ TLogDownloadDAO }

uses uMensagens;

procedure TLogDownloadDAO.procInserirOuAtualizar(ALogDownload: TLogDownload);
begin
  if (ALogDownload.CODIGO = 0) then
    ALogDownload.CODIGO := funcProximoID;

  Qry.Close;
  Qry.SQL.Clear;
  try
    Qry.SQL.Text :=
      'INSERT OR REPLACE INTO LOGDOWNLOAD (CODIGO,  URL,  DATAINICIO,  DATAFIM) '
      + ' VALUES (:CODIGO, :URL, :DATAINICIO, :DATAFIM) ';
    Qry.ParamByName('CODIGO').AsFloat := ALogDownload.CODIGO;
    Qry.ParamByName('URL').AsString := ALogDownload.URL;
    Qry.ParamByName('DATAINICIO').AsDateTime := ALogDownload.DATAINICIO;
    Qry.ParamByName('DATAFIM').AsDateTime := ALogDownload.DATAFIM;

    if (ALogDownload.DATAFIM = 0) then
      Qry.ParamByName('DATAFIM').Clear;

    Qry.ExecSql;
  except
    on E: Exception do
      raise Exception.Create('Erro ao inserir/atualizar o registro!' +
        sLineBreak + sLineBreak + 'Informações Técnicas:' + sLineBreak +
        E.Message);
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
      raise Exception.Create('Erro ao recuperar o próximo ID!' + sLineBreak +
        sLineBreak + 'Informações Técnicas:' + sLineBreak + E.Message);
  end;
end;

end.
