unit AtualizarDadosForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Db, DBTables, Grids, DBGrids, Buttons, ExtCtrls;

type
  TAtualizarDados = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Table1: TTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Table2: TTable;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Query1: TQuery;
    DataSource3: TDataSource;
    Table3: TTable;
    DataSource4: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    //
  public
    //
    procedure Pausar(MSec: Cardinal);
  end;

var
  AtualizarDados: TAtualizarDados;
  cStatus: Boolean;

implementation

{$R *.DFM}

procedure TAtualizarDados.BitBtn2Click(Sender: TObject);
begin
  Close;
end;


procedure TAtualizarDados.Pausar(MSec: Cardinal);
var
  Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
end;

procedure TAtualizarDados.Button2Click(Sender: TObject);
var
  cTime1,cTime2:String;
  nRes1,nRes2,nSaldo:Integer;
  nPorc, nTotReg, nRegAtu : Extended;
  bStatus:Boolean;
begin
  StatusBar1.Panels[0].Text := 'Processando...';
  Button1.Enabled := false;
  Table2.Open; Table2.First;

  while not Table2.Eof do
  begin
    Table2.Edit;
    Table2.FieldByName('PTS').AsInteger        := 0;
    Table2.FieldByName('JOGOS').AsInteger      := 0;
    Table2.FieldByName('VITORIAS').AsInteger   := 0;
    Table2.FieldByName('EMPATES').AsInteger    := 0;
    Table2.FieldByName('DERROTAS').AsInteger   := 0;
    Table2.FieldByName('GOLS_PRO').AsInteger   := 0;
    Table2.FieldByName('GOLS_CONTR').AsInteger := 0;
    Table2.FieldByName('SALDO').AsInteger      := 0;
    Table2.Post; Table2.Next;
  end; //while.

  Table1.Open;
  Table1.First;
  nPorc := 0;
  nTotreg := Table1.RecordCount;
  nRegAtu := Table1.Recno;
  ProgressBar1.Position := 0;
  ProgressBar1.Max := Table1.RecordCount;
  ProgressBar1.Min := 1;
  nPorc := (100 * nRegAtu) / nTotReg;
  Label1.Caption := FloatToStr(Int(nPorc)) + '%';
  Table2.First;

  while not Table1.Eof do
  begin
    if Table1.FieldByName('MARCA').AsString = 'v' then
    begin
      cTime1 := Table1.FieldByName('TIME1').AsString;
      cTime2 := Table1.FieldByName('TIME2').AsString;
      nRes1 := Table1.FieldByName('RES1').AsInteger;
      nRes2 := Table1.FieldByName('RES2').AsInteger;
      Label2.Caption := cTime1 + ' ' + IntToStr(nRes1) + ' x ' + IntToStr(nRes2) + ' ' + cTime2;

      if Table2.Locate('TIME',cTime1,[]) then
      begin
        Table2.Edit;
        if nRes1 > nRes2 then
        begin
          Table2.FieldByName('PTS').AsInteger := Table2.FieldByName('PTS').AsInteger + 3;
          Table2.FieldByName('VITORIAS').AsInteger := Table2.FieldByName('VITORIAS').AsInteger + 1;
        end; //if.

        if nRes1 = nRes2 then
        begin
          Table2.FieldByName('PTS').AsInteger := Table2.FieldByName('PTS').AsInteger + 1;
          Table2.FieldByName('EMPATES').AsInteger := Table2.FieldByName('EMPATES').AsInteger + 1;
        end; //if.

        if nRes1 < nRes2 then
          Table2.FieldByName('DERROTAS').AsInteger := Table2.FieldByName('DERROTAS').AsInteger + 1;

          Table2.FieldByName('JOGOS').AsInteger      := Table2.FieldByName('JOGOS').AsInteger + 1;
          Table2.FieldByName('GOLS_PRO').AsInteger   := Table2.FieldByName('GOLS_PRO').AsInteger + nRes1;
          Table2.FieldByName('GOLS_CONTR').AsInteger := Table2.FieldByName('GOLS_CONTR').AsInteger + nRes2;
          nSaldo := Table2.FieldByName('GOLS_PRO').AsInteger - Table2.FieldByName('GOLS_CONTR').AsInteger;
          Table2.FieldByName('SALDO').AsInteger      := nSaldo;
          Table2.Post;
        end; //if.

        if Table2.Locate('Time',cTime2,[]) then begin
        Table2.Edit;
           if nRes1 < nRes2 then begin
              Table2.FieldByName('PTS').AsInteger := Table2.FieldByName('PTS').AsInteger + 3;
              Table2.FieldByName('VITORIAS').AsInteger := Table2.FieldByName('VITORIAS').AsInteger + 1;
           end;

           if nRes1 = nRes2 then begin
              Table2.FieldByName('PTS').AsInteger := Table2.FieldByName('PTS').AsInteger + 1;
              Table2.FieldByName('EMPATES').AsInteger := Table2.FieldByName('EMPATES').AsInteger + 1;
           end;

           if nRes1 > nRes2 then
              Table2.FieldByName('DERROTAS').AsInteger := Table2.FieldByName('DERROTAS').AsInteger + 1;

        Table2.FieldByName('JOGOS').AsInteger := Table2.FieldByName('JOGOS').AsInteger + 1;
        Table2.FieldByName('GOLS_PRO').AsInteger := Table2.FieldByName('GOLS_PRO').AsInteger + nRes2;
        Table2.FieldByName('GOLS_CONTR').AsInteger := Table2.FieldByName('GOLS_CONTR').AsInteger + nRes1;
        nSaldo := Table2.FieldByName('GOLS_PRO').AsInteger - Table2.FieldByName('GOLS_CONTR').AsInteger;
        Table2.FieldByName('SALDO').AsInteger := nSaldo;
        Table2.Post;

        end;
    end;

      ProgressBar1.StepBy(1);
      nRegAtu := Table1.Recno;
      nPorc := (100 * nRegAtu) / nTotReg;
      Label1.Caption := FloatToStr(Int(nPorc)) + '%';
      Pausar(200);
      Table1.Next;
      end;

    StatusBar1.Panels[0].Text := 'Aguarde o Término das Atualizações...';
    Query1.SQL.Text := 'SELECT * FROM grupos ORDER BY grupo, pts DESCENDING, vitorias DESCENDING, empates DESCENDING, derrotas, saldo DESCENDING, gols_pro DESCENDING, gols_contr';
    Query1.Open;
    Table3.Open;
    Table3.First;

//------------------------ ## JOGOS DAS OITAVAS ## -----------------------------
{Jogo 1: 1A vs. 2B}
    Query1.MoveBy(16);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(-11);
    Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 2: 1C vs. 2D}
    Query1.MoveBy(-5);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(21);
    Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 3: 1B vs. 2A}
    Query1.MoveBy(-1);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(-19);
    Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 4: 1D vs. 2C}
    Query1.MoveBy(3);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(13); Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 5: 1E vs. 2F}
    Query1.MoveBy(7);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(-11); Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 6: 1G vs. 2H}
    Query1.MoveBy(-5);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(21); Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 7: 1F vs. 2E}
    Query1.MoveBy(-1);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(-19); Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
    Table3.Next;
{Jogo 8: 1H vs. 2G}
    Query1.MoveBy(3);
    Table3.Edit;
    Table3.FieldByName('TIME1').AsString := Query1.FieldByName('TIME').AsString;
    Query1.MoveBy(13); Table3.Edit;
    Table3.FieldByName('TIME2').AsString := Query1.FieldByName('TIME').AsString;
//------------------------------------------------------------------------------

    Table3.Post;
    Button1.Enabled := true;
    MessageBeep(0);
    STatusBar1.Panels[0].Text := 'Atualização completa...';
end;

procedure TAtualizarDados.Button1Click(Sender: TObject);
begin
  Label1.Caption := '0%';
  ProgressBar1.Position := 0;
  Label2.Caption := 'Clique em Atualizar';
  Close;
end;

procedure TAtualizarDados.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Clique em Atualizar';
end;

end.





