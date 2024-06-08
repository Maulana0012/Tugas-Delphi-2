unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl10: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    Edit2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    Edit3: TEdit;
    lbl2: TLabel;
    Edit4: TEdit;
    lbl3: TLabel;
    Edit5: TEdit;
    lbl4: TLabel;
    Edit6: TEdit;
    lbl5: TLabel;
    Edit7: TEdit;
    lbl6: TLabel;
    Edit8: TEdit;
    lbl7: TLabel;
    Edit9: TEdit;
    lbl8: TLabel;
    Edit10: TEdit;
    lbl9: TLabel;
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
  Form5: TForm5;

var
  temptString: string;
  id : string;  

implementation
  uses Unit2;
{$R *.dfm}


procedure TForm5.btn1Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString)
   or (Edit4.Text = temptString) or (Edit5.Text = temptString)
   or (Edit6.Text = temptString) or (Edit7.Text = temptString)
   or (Edit8.Text = temptString) or (Edit9.Text = temptString)
   or (Edit10.Text = temptString)
then
  begin
    lbl10.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqrySupplier.SQL.Clear;
    DataModule2.zqrySupplier.SQL.Add('Insert into supplier values(null,"' + Edit1.Text + '", "' + Edit3.Text + '","' + Edit4.Text + '", "' + Edit5.Text + '","' + Edit6.Text + '", "' + Edit7.Text + '","' + Edit8.Text + '", "' + Edit9.Text + '","' + Edit10.Text + '")');
    DataModule2.zqrySupplier.ExecSQL;

    DataModule2.zqrySupplier.SQL.Clear;
    DataModule2.zqrySupplier.SQL.Add('select * from supplier');
    DataModule2.zqrySupplier.Open;
    ShowMessage('added');

    lbl10.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
    Edit7.Text := '';
    Edit8.Text := '';
    Edit9.Text := '';
    Edit10.Text := '';
  end
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString)
   or (Edit4.Text = temptString) or (Edit5.Text = temptString)
   or (Edit6.Text = temptString) or (Edit7.Text = temptString)
   or (Edit8.Text = temptString) or (Edit9.Text = temptString)
   or (Edit10.Text = temptString)
then
  begin
    lbl10.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqrySupplier.SQL.Clear;
    DataModule2.zqrySupplier.SQL.Add('Update supplier set nik="' + Edit1.Text + '", nama="' + Edit3.Text + '", telp="' + Edit4.Text + '", email="' + Edit5.Text + '", alamat="' + Edit6.Text + '", perusahaan="' + Edit7.Text + '", nama_bank="' + Edit8.Text + '", nama_akun_bank="' + Edit9.Text + '", no_akun_bank="' + Edit10.Text + '" Where id ="' + id + '"');
    DataModule2.zqrySupplier.ExecSQL;

    DataModule2.zqrySupplier.SQL.Clear;
    DataModule2.zqrySupplier.SQL.Add('select * from supplier');
    DataModule2.zqrySupplier.Open;
    ShowMessage('updated');

    lbl10.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
    Edit7.Text := '';
    Edit8.Text := '';
    Edit9.Text := '';
    Edit10.Text := '';
  end
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
temptString := '';
if (Edit1.Text = temptString) or (Edit3.Text = temptString)
   or (Edit4.Text = temptString) or (Edit5.Text = temptString)
   or (Edit6.Text = temptString) or (Edit7.Text = temptString)
   or (Edit8.Text = temptString) or (Edit9.Text = temptString)
   or (Edit10.Text = temptString)
then
  begin
    lbl10.Caption := 'input tidak boleh kosong';
  end
else
  begin
    DataModule2.zqrySupplier.SQL.Clear;
    DataModule2.zqrySupplier.SQL.Add('Delete From supplier Where id ="' + id + '"');
    DataModule2.zqrySupplier.ExecSQL;

    DataModule2.zqrySupplier.SQL.Clear;
    DataModule2.zqrySupplier.SQL.Add('select * from supplier');
    DataModule2.zqrySupplier.Open;
    ShowMessage('deleted');

    lbl10.Caption := '';
    Edit1.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
    Edit5.Text := '';
    Edit6.Text := '';
    Edit7.Text := '';
    Edit8.Text := '';
    Edit9.Text := '';
    Edit10.Text := '';
  end
end;

procedure TForm5.OnCellClickDBGrid(Column: TColumn);
begin
Edit1.Text := DataModule2.zqrySupplier.Fields[1].AsString;
Edit3.Text := DataModule2.zqrySupplier.Fields[2].AsString;
Edit4.Text := DataModule2.zqrySupplier.Fields[3].AsString;
Edit5.Text := DataModule2.zqrySupplier.Fields[4].AsString;
Edit6.Text := DataModule2.zqrySupplier.Fields[5].AsString;
Edit7.Text := DataModule2.zqrySupplier.Fields[6].AsString;
Edit8.Text := DataModule2.zqrySupplier.Fields[7].AsString;
Edit9.Text := DataModule2.zqrySupplier.Fields[8].AsString;
Edit10.Text := DataModule2.zqrySupplier.Fields[9].AsString;
id:= DataModule2.zqrySupplier.Fields[0].AsString;
end;

end.
