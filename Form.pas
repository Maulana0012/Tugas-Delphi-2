unit Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    btn1: TButton;
    Label1: TLabel;
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
    Label1.Caption := '';
    Edit1.Text := '';
    Form2.Close;
  end

else if Edit1.Text = 'kasir' then
  begin
    Form1.mm1.Items[1].Visible:= False;
    Form1.mm1.Items[2].Visible:= True;
    Form1.mm1.Items[3].Visible:= False;
    Label1.Caption := '';
    Edit1.Text := '';
    Form2.Close;
  end

else if Edit1.Text = 'pemilik' then
  begin
    Form1.mm1.Items[1].Visible:= False;
    Form1.mm1.Items[2].Visible:= False;
    Form1.mm1.Items[3].Visible:= True;
    Label1.Caption := '';
    Edit1.Text := '';
    Form2.Close;
  end

else
  begin
    Label1.Caption := 'User does not exist';
    Edit1.Text := '';
  end
end;

end.
