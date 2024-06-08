unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, DBGrids;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
if Edit1.Text <> '' then
begin
    DataModule2.zqrykategori.SQL.Clear;
    DataModule2.zqrykategori.SQL.Add('Insert into kategori values(null,"' + Edit1.Text + '")');
    DataModule2.zqrykategori.ExecSQL;

    DataModule2.zqrykategori.SQL.Clear;
    DataModule2.zqrykategori.SQL.Add('select * from kategori');
    DataModule2.zqrykategori.Open;
    ShowMessage('Data berhasil disimpan');
end
else
  begin
    Edit1.Text := '';
  end
end;
procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule2.zqrykategori.SQL.Clear;
DataModule2.zqrykategori.SQL.Add('Update kategori set name ="'+ Edit1.Text + '" where id = "' + a + '"');
DataModule2.zqrykategori.ExecSQL;

DataModule2.zqrykategori.SQL.Clear;
DataModule2.zqrykategori.SQL.Add('select * from kategori');
DataModule2.zqrykategori.open;
ShowMessage('data berhasil disimpan');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule2.zqrykategori.SQL.Clear;
DataModule2.zqrykategori.SQL.Add('delete from kategori where id = "' + a + '"');
DataModule2.zqrykategori.ExecSQL;

DataModule2.zqrykategori.SQL.Clear;
DataModule2.zqrykategori.SQL.Add('select * from kategori');
DataModule2.zqrykategori.open;
ShowMessage('data berhasil dihapus');
end;

procedure TForm3.CellClick(Column: TColumn);
begin
Edit1.Text := DataModule2.zqrykategori.Fields[1].AsString;
a:= DataModule2.zqrykategori.Fields[0].AsString;
end;

end.
