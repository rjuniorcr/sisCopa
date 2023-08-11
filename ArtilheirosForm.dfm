object Artilheiros: TArtilheiros
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Os Maiores Artilheiros de Todas as Copas'
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 521
    Width = 763
    Height = 19
    Panels = <>
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 763
    Height = 521
    Align = alClient
    BorderStyle = bsNone
    Color = clInfoBk
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    Kind = bkClose
  end
end
