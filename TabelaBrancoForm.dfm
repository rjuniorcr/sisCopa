object TabelaBranco: TTabelaBranco
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
  Caption = 'Tabela Completa da Copa de 2006 - Em Branco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 1024
    Height = 719
    Align = alClient
    BorderStyle = bsNone
    Color = clInfoBk
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BitBtn3: TBitBtn
    Left = 688
    Top = 472
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 504
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
