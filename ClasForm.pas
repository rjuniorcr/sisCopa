unit ClasForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TClas = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid2: TDBGrid;
    Query2: TQuery;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clas: TClas;
  vVetor: Array [1..9] of String;

implementation

uses MainForm;

{$R *.DFM}

procedure TClas.FormShow(Sender: TObject);
begin
   Label1.Caption :=  'GRUPO ' + cVar;
   Query1.SQL.Text := 'SELECT * FROM grupos WHERE grupo = "' + cVar + '" ORDER BY pts DESCENDING, vitorias DESCENDING, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESCENDING, gols_contr';
   Query2.SQL.Text := 'SELECT * FROM rodadas WHERE GRUPO = "' + cVar + '" ORDER BY data';
   Query1.Open; Query2.Open;
end;

procedure TClas.Button1Click(Sender: TObject);
begin
    Close;
end;

procedure TClas.Button3Click(Sender: TObject);
var I:Integer;
begin
  if cVar = 'A' then begin
     cVar := 'H';
     Query1.SQL.Clear; Query2.SQL.Clear;
     Label1.Caption :=  'GRUPO ' + cVar;
     Query1.SQL.Text := 'SELECT * FROM grupos WHERE grupo = "' + cVar + '" ORDER BY pts DESCENDING, vitorias DESCENDING, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESCENDING, gols_contr';
     Query2.SQL.Text := 'SELECT * FROM rodadas WHERE GRUPO = "' + cVar + '" ORDER BY data';
     Query1.Open; Query2.Open;

  end else begin
     for I := Low(vVetor) to High(vVetor) do begin
         if cVar = vVetor[I] then begin
            cVar := vVetor[I-1];
            Query1.SQL.Clear; Query2.SQL.Clear;
            Label1.Caption :=  'GRUPO ' + cVar;
            Query1.SQL.Text := 'SELECT * FROM grupos WHERE grupo = "' + cVar + '" ORDER BY pts DESCENDING, vitorias DESCENDING, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESCENDING, gols_contr';
            Query2.SQL.Text := 'SELECT * FROM rodadas WHERE GRUPO = "' + cVar + '" ORDER BY data';
            Query1.Open; Query2.Open;
            exit;
         end;
     end;
  end;
end;

procedure TClas.FormCreate(Sender: TObject);
begin
   vVetor[1] := 'A'; vVetor[2] := 'B'; vVetor[3] := 'C';
   vVetor[4] := 'D'; vVetor[5] := 'E'; vVetor[6] := 'F';
   vVetor[7] := 'G'; vVetor[8] := 'H'; vVetor[9] := 'T';
end;

procedure TClas.Button2Click(Sender: TObject);
var I:Integer;
begin
  if cVar = 'H' then begin
     cVar := 'A';
     Query1.SQL.Clear; Query2.SQL.Clear;
     Label1.Caption :=  'GRUPO ' + cVar;
     Query1.SQL.Text := 'SELECT * FROM grupos WHERE grupo = "' + cVar + '" ORDER BY pts DESCENDING, vitorias DESCENDING, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESCENDING, gols_contr';
     Query2.SQL.Text := 'SELECT * FROM rodadas WHERE GRUPO = "' + cVar + '" ORDER BY data';
     Query1.Open; Query2.Open;
  end else begin
     for I := Low(vVetor) to High(vVetor) do begin
         if cVar = vVetor[I] then begin
            cVar := vVetor[I+1];
            Query1.SQL.Clear; Query2.SQL.Clear;
            Label1.Caption :=  'GRUPO ' + cVar;
            Query1.SQL.Text := 'SELECT * FROM grupos WHERE grupo = "' + cVar + '" ORDER BY pts DESCENDING, vitorias DESCENDING, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESCENDING, gols_contr';
            Query2.SQL.Text := 'SELECT * FROM rodadas WHERE GRUPO = "' + cVar + '" ORDER BY data';
            Query1.Open; Query2.Open;
            exit;
         end;
     end;
  end;
end;

procedure TClas.DataSource1DataChange(Sender: TObject; Field: TField);
begin
    ShowScrollBar ( DBGrid1.Handle, SB_VERT, false );
//OBS: você não pode usar apenas uma vez.
//Após fazer o scroll no grid, a barra reaparecerá.
//Você deverá usar esta chamada no evento OnDataChange
//do TDataSource do seu TQuery.
    
end;

procedure TClas.DataSource2DataChange(Sender: TObject; Field: TField);
begin
    ShowScrollBar ( DBGrid2.Handle, SB_VERT, false );
//OBS: você não pode usar apenas uma vez.
//Após fazer o scroll no grid, a barra reaparecerá.
//Você deverá usar esta chamada no evento OnDataChange
//do TDataSource do seu TQuery.

end;

end.
