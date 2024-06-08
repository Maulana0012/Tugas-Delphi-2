object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 197
  Top = 132
  Height = 411
  Width = 437
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
    Left = 56
    Top = 80
  end
  object dskategori: TDataSource
    DataSet = zqrykategori
    Left = 56
    Top = 136
  end
  object con2: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\mysql\lib\libmysql.dll'
    Left = 136
    Top = 24
  end
  object zqrySatuan: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'Select * From kustomer')
    Params = <>
    Left = 136
    Top = 80
  end
  object dsSatuan: TDataSource
    DataSet = zqrySatuan
    Left = 136
    Top = 136
  end
  object con3: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\mysql\lib\libmysql.dll'
    Left = 224
    Top = 24
  end
  object zqrySupplier: TZQuery
    Connection = con3
    Active = True
    SQL.Strings = (
      'Select * From supplier')
    Params = <>
    Left = 224
    Top = 80
  end
  object dsSupplier: TDataSource
    DataSet = zqrySupplier
    Left = 224
    Top = 136
  end
  object con4: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\xampp\mysql\lib\libmysql.dll'
    Left = 312
    Top = 24
  end
  object zqryKustomer: TZQuery
    Connection = con4
    Active = True
    SQL.Strings = (
      'Select * From kustomer')
    Params = <>
    Left = 312
    Top = 80
  end
  object dsKustomer: TDataSource
    DataSet = zqryKustomer
    Left = 312
    Top = 136
  end
end
