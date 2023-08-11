object Cifras: TCifras
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Cifras da Copa de 2006'
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
    Width = 763
    Height = 537
    Align = alClient
    BorderStyle = bsNone
    Color = clInfoBk
    Lines.Strings = (
      '')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 688
    Top = 512
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 0
    Kind = bkClose
  end
end
