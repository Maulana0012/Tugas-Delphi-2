unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    Edit2: TEdit;
    btn4: TButton;
    lbl1: TLabel;
    Edit3: TEdit;
    lbl2: TLabel;
    Edit4: TEdit;
    lbl3: TLabel;
    Edit5: TEdit;
    lbl4: TLabel;
    Edit6: TEdit;
    lbl5: TLabel;
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
  Form6: TForm6;

var
  temptString: string;
  id : string;
    
implementation
  uses Unit2;
{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString)
    or (Edit4.Text = temptString) or (Edit5.Text = temptString)
    or (Edit6.Text = temptString)
then
  begin
    lbl5.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('Insert into kustomer values(null,"' + Edit1.Text + '", "' + Edit3.Text + '" , "' + Edit4.Text + '", "' + Edit5.Text + '", "' + Edit6.Text + '")');
    DataModule2.zqryKustomer.ExecSQL;

    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('select * from kustomer');
    DataModule2.zqryKustomer.Open;
    ShowMessage('added');

    lbl5.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
  end
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString)
    or (Edit4.Text = temptString) or (Edit5.Text = temptString)
    or (Edit6.Text = temptString)
then
  begin
    lbl5.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('Update kustomer set nik="' + Edit1.Text + '", nama="' + Edit3.Text + '", telp="' + Edit4.Text + '", email="' + Edit5.Text + '", alamat="' + Edit6.Text + '" Where id ="' + id + '"');
    DataModule2.zqryKustomer.ExecSQL;

    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('select * from kustomer');
    DataModule2.zqryKustomer.Open;
    ShowMessage('updated');

    lbl5.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
  end
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString)
    or (Edit4.Text = temptString) or (Edit5.Text = temptString)
    or (Edit6.Text = temptString)
then
  begin
    lbl5.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('Delete From kustomer Where id ="' + id + '"');
    DataModule2.zqryKustomer.ExecSQL;

    DataModule2.zqryKustomer.SQL.Clear;
    DataModule2.zqryKustomer.SQL.Add('select * from kustomer');
    DataModule2.zqryKustomer.Open;
    ShowMessage('deleted');

    lbl5.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
  end
end;

procedure TForm6.OnCellClickDBGrid(Column: TColumn);
begin
Edit1.Text := DataModule2.zqryKustomer.Fields[1].AsString;
Edit3.Text := DataModule2.zqryKustomer.Fields[2].AsString;
Edit4.Text := DataModule2.zqryKustomer.Fields[3].AsString;
Edit5.Text := DataModule2.zqryKustomer.Fields[4].AsString;
Edit6.Text := DataModule2.zqryKustomer.Fields[5].AsString;
id:= DataModule2.zqryKustomer.Fields[0].AsString;
end;

end.
