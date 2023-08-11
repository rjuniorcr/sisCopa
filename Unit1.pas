unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    Query1: TQuery;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
Showmessage(RadioGroup1.Items[RadioGroup1.ItemIndex]);
    if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Grupo' then begin
       Query1.SQL.Text := 'SELECT * FROM grupos ORDER BY grupo';
       ShowMessage('Deu certo?');
    end;
    if RadioGroup1.Items[RadioGroup1.ItemIndex] = 'Nome da Equipe' then begin
       Query1.SQL.Text := 'SELECT * FROM grupos ORDER BY time';
       ShowMessage('Deu certo?');
    end;
end;

end.
