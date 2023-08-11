unit J1FaseForm;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, ComCtrls, Buttons, Grids,
  DBGrids, Variants;

type
  TJ1Fase = class(TForm)
    StatusBar1: TStatusBar;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DataSource2: TDataSource;
    Table2: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  J1Fase: TJ1Fase;
  lAppend:Boolean;

implementation

{$R *.DFM}

procedure TJ1Fase.FormCreate(Sender: TObject);
begin
  Table2.Open; 
  //Query1.SQL.Text := 'SELECT * FROM rodadas WHERE data = DateTime("' + DateTimeToStr(date) + '")';
  //Query1.Open;
end;

procedure TJ1Fase.Button1Click(Sender: TObject);
begin
   ShowMessage('Clique em "ATUALIZAR DADOS"'#10+'para fazer o processamento'#10+'das atualizações');
   ComboBox1.SetFocus;
   J1Fase.Close;
end;

procedure TJ1Fase.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
end;
end;

procedure TJ1Fase.Edit2Exit(Sender: TObject);
begin
  if MessageDlg('Confirma resultado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
     if not Table2.Locate('TIME1;TIME2',VarArrayOf([ComboBox1.Text,ComboBox2.Text]), []) then begin
        ShowMessage('Este jogo não existe');
        exit;
     end else begin
       if Table2.FieldByName('MARCA').AsString = 'v' then begin
          if MessageDlg('Alterar Resultado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
             Table2.Edit;
             Table2.FieldByName('RES1').AsInteger := StrToInt(Edit1.Text);
             Table2.FieldByName('RES2').AsInteger := StrToInt(Edit2.Text);
             Table2.Post;
          end;
       end else begin
          Table2.Edit;
          Table2.FieldByName('RES1').AsInteger := StrToInt(Edit1.Text);
          Table2.FieldByName('RES2').AsInteger := StrToInt(Edit2.Text);
          Table2.FieldByName('MARCA').AsString := 'v';
          Table2.Post;
       end;
       Edit1.Clear; Edit2.Clear;
       //Query1.Clear;
       //Query1.SQL.Text := 'SELECT * FROM RODADAS WHERE data = ';
       //Query1.Open;
       ComboBox1.SetFocus;
     end;
  end;
end;

procedure TJ1Fase.FormShow(Sender: TObject);
begin
    ComboBox1.SetFocus;
end;

procedure TJ1Fase.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then begin
     ShowMessage('Este campo não pode ser vazio');
     Edit1.SetFocus;
  end;   
end;

end.
