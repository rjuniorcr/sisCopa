object AtualizarDados: TAtualizarDados
  Left = 193
  Top = 203
  Width = 436
  Height = 134
  Caption = 'Atualiza'#231#227'o '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 87
    Width = 428
    Height = 20
    Panels = <
      item
        Alignment = taCenter
        Width = 250
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 428
    Height = 87
    Align = alClient
    Caption = ' Atualizando Jogos '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 384
      Top = 30
      Width = 26
      Height = 14
      Caption = '0 %'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 249
      Height = 13
      Alignment = taCenter
      AutoSize = False
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 24
      Width = 369
      Height = 25
      TabOrder = 0
    end
    object Button1: TButton
      Left = 344
      Top = 56
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 264
      Top = 56
      Width = 75
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Table1: TTable
    DatabaseName = 'Copa 2006'
    IndexFieldNames = 'TIME1;TIME2'
    TableName = 'rodadas.db'
    Left = 392
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 360
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 296
    Top = 8
  end
  object Table2: TTable
    DatabaseName = 'Copa 2006'
    IndexFieldNames = 'GRUPO;TIME'
    TableName = 'grupos.db'
    Left = 328
    Top = 8
  end
  object Query1: TQuery
    DatabaseName = 'Copa 2006'
    SQL.Strings = (
      
        'SELECT * FROM grupos ORDER BY pts DESCENDING, vitorias DESCENDIN' +
        'G, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESC' +
        'ENDING, gols_contr'#39';')
    Left = 144
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = Query1
    Left = 176
    Top = 8
  end
  object Table3: TTable
    DatabaseName = 'Copa 2006'
    IndexFieldNames = 'JOGO'
    TableName = '2a.Fase.DB'
    Left = 248
    Top = 8
  end
  object DataSource4: TDataSource
    DataSet = Table3
    Left = 216
    Top = 8
  end
end
