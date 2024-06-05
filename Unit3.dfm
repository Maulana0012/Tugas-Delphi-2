object Form3: TForm3
  Left = 582
  Top = 218
  Width = 469
  Height = 400
  Caption = 'Kategori'
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
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object Label2: TLabel
    Left = 72
    Top = 296
    Width = 86
    Height = 13
    Caption = 'MASUKAN NAME: '
  end
  object Edit1: TEdit
    Left = 136
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 112
    Top = 104
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 104
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 104
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 80
    Top = 152
    Width = 320
    Height = 120
    DataSource = DataModule2.dskategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = CellClick
  end
  object Edit2: TEdit
    Left = 160
    Top = 296
    Width = 185
    Height = 21
    TabOrder = 5
    Text = 'w'
  end
  object btn4: TButton
    Left = 352
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
