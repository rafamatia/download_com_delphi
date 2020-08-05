unit untHistoricoDownload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TuFrmHistoricoDownload = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    btnFechar: TBitBtn;
    qryConsultaLogDownload: TFDQuery;
    qryConsultaLogDownloadCODIGO: TFMTBCDField;
    qryConsultaLogDownloadURL: TStringField;
    qryConsultaLogDownloadDATAINICIO: TDateField;
    qryConsultaLogDownloadDATAFIM: TDateField;
    dsConsultaLogDownload: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure procSelect;

  public
    { Public declarations }
  end;

var
  uFrmHistoricoDownload: TuFrmHistoricoDownload;

implementation

{$R *.dfm}

uses uFabricaConexao;

procedure TuFrmHistoricoDownload.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TuFrmHistoricoDownload.FormShow(Sender: TObject);
begin
  procSelect;
end;

procedure TuFrmHistoricoDownload.procSelect;
begin
  qryConsultaLogDownload.Connection := TFabricaConexao.obterConexao;
  qryConsultaLogDownload.close;
  qryConsultaLogDownload.SQL.Clear;
  qryConsultaLogDownload.SQL.Text := ' select a.* ' + ' from LOGDOWNLOAD a ' +
    ' order by a.codigo desc ';
  qryConsultaLogDownload.Open;
end;

end.
