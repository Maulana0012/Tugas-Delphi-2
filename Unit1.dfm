object Form1: TForm1
  Left = 383
  Top = 204
  Width = 869
  Height = 450
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnClick = LOGIN1Click
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 8
    object N1: TMenuItem
      Caption = 'FILE'
      object LOGIN1: TMenuItem
        Caption = 'LOGIN'
        OnClick = LOGIN1Click
      end
      object LOGOUT: TMenuItem
        Caption = 'LOGOUT'
      end
    end
    object DATAMASTER1: TMenuItem
      Caption = 'DATA MASTER'
      object KATEGORI1: TMenuItem
        Caption = 'KATEGORI'
        OnClick = KATEGORI1Click
      end
      object SATUAN1: TMenuItem
        Caption = 'SATUAN'
        OnClick = SATUAN1Click
      end
      object SUPPLIER1: TMenuItem
        Caption = 'SUPPLIER'
        OnClick = SUPPLIER1Click
      end
      object KUSTOMER1: TMenuItem
        Caption = 'KUSTOMER'
        OnClick = KUSTOMER1Click
      end
    end
    object RANSAKASI1: TMenuItem
      Caption = 'TRANSAKASI'
      object PENJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
      end
      object PEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object LAPORANPENJUALAN1: TMenuItem
        Caption = 'LAPORAN PENJUALAN'
      end
      object LAPORANSTOKBARANG1: TMenuItem
        Caption = 'LAPORAN STOK BARANG'
      end
      object LAPORANBARANG1: TMenuItem
        Caption = 'LAPORAN BARANG'
      end
    end
  end
end
