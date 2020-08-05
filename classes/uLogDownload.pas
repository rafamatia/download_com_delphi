unit uLogDownload;

interface

uses
  SysUtils, Classes, strUtils;

type
  TLogDownload = class
  private
    FCODIGO: Double;
    FURL: String;
    FDATAINICIO: TDate;
    FDATAFIM: TDate;
    FCaminhoParaSalvar: String;
  public
    property CODIGO: Double read FCODIGO write FCODIGO;
    property URL: String read FURL write FURL;
    property DATAINICIO: TDate read FDATAINICIO write FDATAINICIO;
    property DATAFIM: TDate read FDATAFIM write FDATAFIM;
    property CaminhoParaSalvar: String read FCaminhoParaSalvar
      write FCaminhoParaSalvar;
  end;

implementation

end.
