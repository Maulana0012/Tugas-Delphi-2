object Form5: TForm5
  Left = 398
  Top = 87
  Width = 870
  Height = 554
  Caption = 'Supplier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl10: TLabel
    Left = 256
    Top = 24
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 136
    Top = 480
    Width = 86
    Height = 13
    Caption = 'MASUKAN NAME: '
  end
  object lbl1: TLabel
    Left = 96
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Nama:'
  end
  object lbl2: TLabel
    Left = 96
    Top = 136
    Width = 42
    Height = 13
    Caption = 'Telepon:'
  end
  object lbl3: TLabel
    Left = 96
    Top = 168
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object lbl4: TLabel
    Left = 96
    Top = 200
    Width = 37
    Height = 13
    Caption = 'Alamat:'
  end
  object lbl5: TLabel
    Left = 96
    Top = 232
    Width = 61
    Height = 13
    Caption = 'Perusahaan:'
  end
  object lbl6: TLabel
    Left = 376
    Top = 72
    Width = 57
    Height = 13
    Caption = 'Nama Bank:'
  end
  object lbl7: TLabel
    Left = 376
    Top = 104
    Width = 84
    Height = 13
    Caption = 'Nama Akun Bank:'
  end
  object lbl8: TLabel
    Left = 376
    Top = 136
    Width = 70
    Height = 13
    Caption = 'No Akun Bank:'
  end
  object lbl9: TLabel
    Left = 96
    Top = 72
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Edit1: TEdit
    Left = 168
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 176
    Top = 288
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 288
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 288
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object Edit2: TEdit
    Left = 224
    Top = 480
    Width = 185
    Height = 21
    TabOrder = 4
    Text = 'w'
  end
  object btn4: TButton
    Left = 416
    Top = 472
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object dbgrd1: TDBGrid
    Left = 160
    Top = 328
    Width = 320
    Height = 120
    DataSource = DataModule2.dsSupplier
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = OnCellClickDBGrid
  end
  object Edit3: TEdit
    Left = 168
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 168
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 168
    Top = 168
    Width = 185
    Height = 21
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 168
    Top = 200
    Width = 185
    Height = 21
    TabOrder = 10
  end
  object Edit7: TEdit
    Left = 168
    Top = 232
    Width = 185
    Height = 21
    TabOrder = 11
  end
  object Edit8: TEdit
    Left = 472
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 12
  end
  object Edit9: TEdit
    Left = 472
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 13
  end
  object Edit10: TEdit
    Left = 472
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 14
  end
end
