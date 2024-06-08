unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule2 = class(TDataModule)
    con1: TZConnection;
    zqrykategori: TZQuery;
    dskategori: TDataSource;
    con2: TZConnection;
    zqrySatuan: TZQuery;
    dsSatuan: TDataSource;
    con3: TZConnection;
    zqrySupplier: TZQuery;
    dsSupplier: TDataSource;
    con4: TZConnection;
    zqryKustomer: TZQuery;
    dsKustomer: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
