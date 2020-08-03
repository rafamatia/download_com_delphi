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
    FPERCENTUAL: Integer;
  public
    property CODIGO: Double read FCODIGO write FCODIGO;
    property URL: String read FURL write FURL;
    property DATAINICIO: TDate read FDATAINICIO write FDATAINICIO;
    property DATAFIM: TDate read FDATAFIM write FDATAFIM;
    property PERCENTUAL: Integer read FPERCENTUAL write FPERCENTUAL;
  end;

implementation

end.
