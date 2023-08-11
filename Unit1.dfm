object Form1: TForm1
  Left = 194
  Top = 106
  Width = 540
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 532
    Height = 209
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 3
    Width = 529
    Height = 110
    Caption = ' Opções de Consulta '
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'Grupo'
      'Nome da Equipe'
      'Pontos '
      'Vitorias'
      'Empates'
      'Derrotas'
      'Gols Pro'
      'Gols Contra'
      'Saldo')
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 329
    Width = 532
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'C:\ftdelphi\Projects\Copa2002'
    SQL.Strings = (
      'select * from jogos')
    Left = 464
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 496
    Top = 16
  end
end
