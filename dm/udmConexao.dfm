object dmConexao: TdmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 288
  Width = 202
  object FDConexaoBanco: TFDConnection
    Params.Strings = (
      'Database=C:\desenvolvimento\softplan\db\banco.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    FormatOptions.AssignedValues = [fvStrsTrim, fvSortLocale]
    FormatOptions.StrsTrim = False
    FormatOptions.SortLocale = 0
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 72
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 88
    Top = 8
  end
  object qryConsultaLogDownload: TFDQuery
    Connection = FDConexaoBanco
    FormatOptions.AssignedValues = [fvStrsTrim, fvSortLocale]
    FormatOptions.StrsTrim = False
    FormatOptions.SortLocale = 0
    SQL.Strings = (
      'select * from LOGDOWNLOAD a'
      'order by a.codigo desc')
    Left = 88
    Top = 176
    object qryConsultaLogDownloadCODIGO: TFMTBCDField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 22
      Size = 0
    end
    object qryConsultaLogDownloadURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Required = True
      Size = 600
    end
    object qryConsultaLogDownloadDATAINICIO: TDateField
      DisplayLabel = 'Data de Inic'#237'o'
      FieldName = 'DATAINICIO'
      Origin = 'DATAINICIO'
      Required = True
    end
    object qryConsultaLogDownloadDATAFIM: TDateField
      DisplayLabel = 'Data de T'#233'rmino'
      FieldName = 'DATAFIM'
      Origin = 'DATAFIM'
    end
    object qryConsultaLogDownloadPERCENTUAL: TIntegerField
      DisplayLabel = '% Dados Processados'
      FieldName = 'PERCENTUAL'
      Origin = 'PERCENTUAL'
      Required = True
      DisplayFormat = '###,###,##0 %'
    end
  end
  object dsConsultaLogDownload: TDataSource
    DataSet = qryConsultaLogDownload
    Left = 88
    Top = 224
  end
end
