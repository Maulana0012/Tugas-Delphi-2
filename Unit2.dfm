object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 128
  Top = 127
  Height = 200
  Width = 308
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\mysql\lib\libmysql.dll'
    Left = 56
    Top = 24
  end
  object zqrykategori: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'Select * From barang')
    Params = <>
    Left = 136
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = zqrykategori
    Left = 136
    Top = 80
  end
end
