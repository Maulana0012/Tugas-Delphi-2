unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
Form1.mm1.items[3].Visible := True;
if Edit1.Text = 'admin' then
begin
  Form1.mm1.Items[1].Visible:= True;
  Form1.mm1.Items[2].Visible:= False;
  Form1.mm1.Items[3].Visible:= False;
end else if Edit1.Text = 'kasir' then
begin
  Form1.mm1.Items[1].Visible:= False;
  Form1.mm1.Items[2].Visible:= True;
  Form1.mm1.Items[3].Visible:= False;
end else if Edit1.Text = 'pemilik' then
begin
  Form1.mm1.Items[1].Visible:= False;
  Form1.mm1.Items[2].Visible:= False;
  Form1.mm1.Items[3].Visible:= True;
end else
begin

end;;
Form2.Close;
end;

end.