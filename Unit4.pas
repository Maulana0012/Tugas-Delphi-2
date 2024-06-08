unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    Edit2: TEdit;
    btn4: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure OnCellClickDBGrid(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

var
  temptString: string;
  id : string;

implementation
  uses Unit2;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString) then
  begin
    Label4.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqrySatuan.SQL.Clear;
    DataModule2.zqrySatuan.SQL.Add('Insert into satuan values(null,"' + Edit1.Text + '", "' + Edit3.Text + '")');
    DataModule2.zqrySatuan.ExecSQL;

    DataModule2.zqrySatuan.SQL.Clear;
    DataModule2.zqrySatuan.SQL.Add('select * from satuan');
    DataModule2.zqrySatuan.Open;
    ShowMessage('added');

    Label4.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
  end
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString) then
  begin
    Label4.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqrySatuan.SQL.Clear;
    DataModule2.zqrySatuan.SQL.Add('Update satuan set nama="' + Edit1.Text + '", diskripsi="' + Edit3.Text + '" Where id ="' + id + '"');
    DataModule2.zqrySatuan.ExecSQL;

    DataModule2.zqrySatuan.SQL.Clear;
    DataModule2.zqrySatuan.SQL.Add('select * from satuan');
    DataModule2.zqrySatuan.Open;
    ShowMessage('updated');

    Label4.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
  end
end;


procedure TForm4.btn3Click(Sender: TObject);
begin
temptString := '';
if Edit1.Text = temptString then
  begin
    Label4.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqrySatuan.SQL.Clear;
    DataModule2.zqrySatuan.SQL.Add('Delete From satuan Where id ="' + id + '"');
    DataModule2.zqrySatuan.ExecSQL;

    DataModule2.zqrySatuan.SQL.Clear;
    DataModule2.zqrySatuan.SQL.Add('select * from satuan');
    DataModule2.zqrySatuan.Open;
    ShowMessage('deleted');

    Label4.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
  end
end;

procedure TForm4.OnCellClickDBGrid(Column: TColumn);
begin
Edit1.Text := DataModule2.zqrySatuan.Fields[1].AsString;
Edit3.Text := DataModule2.zqrySatuan.Fields[2].AsString;
id:= DataModule2.zqrySatuan.Fields[0].AsString;
end;

end.
