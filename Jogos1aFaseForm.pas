unit Jogos1afaseForm;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls;

type
  TJogos1aFase = class(TForm)
    Query1DATA: TDateField;
    Query1HORA: TStringField;
    Query1TIME_1: TStringField;
    Query1RES_1: TFloatField;
    Query1RES_2: TFloatField;
    Query1TIME_2: TStringField;
    Query1LOCAL: TStringField;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditDATA: TDBEdit;
    Label3: TLabel;
    EditTIME_: TDBEdit;
    EditRES_: TDBEdit;
    EditRES_2: TDBEdit;
    Label6: TLabel;
    EditTIME_2: TDBEdit;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Query1: TQuery;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Jogos1aFase: TJogos1aFase;

implementation

{$R *.DFM}

procedure TJogos1aFase.FormCreate(Sender: TObject);
begin
  Query1.Open;
end;

end.
