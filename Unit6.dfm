object Form6: TForm6
  Left = 407
  Top = 154
  Width = 870
  Height = 450
  Caption = 'Kustomer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 72
    Width = 21
    Height = 13
    Caption = 'NIK:'
  end
  object Label2: TLabel
    Left = 184
    Top = 368
    Width = 86
    Height = 13
    Caption = 'MASUKAN NAME: '
  end
  object lbl1: TLabel
    Left = 96
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object lbl2: TLabel
    Left = 96
    Top = 136
    Width = 42
    Height = 13
    Caption = 'Telepon:'
  end
  object lbl3: TLabel
    Left = 344
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object lbl4: TLabel
    Left = 344
    Top = 104
    Width = 37
    Height = 13
    Caption = 'Alamat:'
  end
  object lbl5: TLabel
    Left = 256
    Top = 40
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 144
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 224
    Top = 176
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 304
    Top = 176
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 384
    Top = 176
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 192
    Top = 224
    Width = 320
    Height = 120
    DataSource = DataModule2.dsKustomer
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = OnCellClickDBGrid
  end
  object Edit2: TEdit
    Left = 272
    Top = 368
    Width = 185
    Height = 21
    TabOrder = 5
    Text = 'w'
  end
  object btn4: TButton
    Left = 464
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 144
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 144
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 8
  end
  object Edit5: TEdit
    Left = 384
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 9
  end
  object Edit6: TEdit
    Left = 384
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 10
  end
end
