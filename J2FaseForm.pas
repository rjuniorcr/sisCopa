unit J2FaseForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Db, DBTables, ComCtrls, DBCtrls, Mask,
  ExtCtrls, Buttons;

type
  TJ2Fase = class(TForm)
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Table1: TTable;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Label83: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Timer1: TTimer;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Edit18Exit(Sender: TObject);
    procedure Edit22Exit(Sender: TObject);
    procedure Edit26Exit(Sender: TObject);
    procedure Edit30Exit(Sender: TObject);
    procedure Edit34Exit(Sender: TObject);
    procedure Edit38Exit(Sender: TObject);
    procedure Edit42Exit(Sender: TObject);
    procedure Edit46Exit(Sender: TObject);
    procedure Edit50Exit(Sender: TObject);
    procedure Edit54Exit(Sender: TObject);
    procedure Edit58Exit(Sender: TObject);
    procedure Edit62Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit16Exit(Sender: TObject);
    procedure Edit20Exit(Sender: TObject);
    procedure Edit24Exit(Sender: TObject);
    procedure Edit28Exit(Sender: TObject);
    procedure Edit32Exit(Sender: TObject);
    procedure Edit36Exit(Sender: TObject);
    procedure Edit40Exit(Sender: TObject);
    procedure Edit44Exit(Sender: TObject);
    procedure Edit48Exit(Sender: TObject);
    procedure Edit52Exit(Sender: TObject);
    procedure Edit56Exit(Sender: TObject);
    procedure Edit60Exit(Sender: TObject);
    procedure Edit64Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Tabela;
    procedure Gravar(Time,J1,J2,Campo:String;nRes1,nRes2,nPen1,nPen2:Integer);
  end;

var
  J2Fase: TJ2Fase;
  cStatus:Boolean;
  cArqImage:String;

implementation

{$R *.DFM}

procedure TJ2Fase.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
end;

end;

procedure TJ2Fase.Timer1Timer(Sender: TObject);
begin
  if cStatus = true then begin
     Image1.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\taça.ico');
     cStatus := false;
  end else begin
     Image1.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + cArqImage + '.jpg');
     cStatus := true;
  end;
end;

procedure TJ2Fase.FormCreate(Sender: TObject);
begin
   cStatus := true;
   cArqImage := 'duvida';
   Table1.Open; Table1.First;
end;

procedure TJ2Fase.FormShow(Sender: TObject);
begin
    Tabela;
end;

procedure TJ2Fase.Tabela;
begin
   Table1.First;
   {Oitavas de Final}

   Label1.Caption  := Table1.FieldByName('JOGO').AsString;
   Label2.Caption  := Table1.FieldByName('DATA').AsString;
   Label3.Caption  := Table1.FieldByName('TIME1').AsString;
   Edit1.Text      := Table1.FieldByName('RES1').AsString;
   Edit2.Text      := Table1.FieldByName('RES2').AsString;
   Edit3.Text      := Table1.FieldByName('PEN1').AsString;
   Edit4.Text      := Table1.FieldByName('PEN2').AsString;
   Label4.Caption  := Table1.FieldByName('TIME2').AsString;
   Label5.Caption  := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label6.Caption  := Table1.FieldByName('JOGO').AsString;
   Label7.Caption  := Table1.FieldByName('DATA').AsString;
   Label8.Caption  := Table1.FieldByName('TIME1').AsString;
   Edit5.Text      := Table1.FieldByName('RES1').AsString;
   Edit6.Text      := Table1.FieldByName('RES2').AsString;
   Edit7.Text      := Table1.FieldByName('PEN1').AsString;
   Edit8.Text      := Table1.FieldByName('PEN2').AsString;
   Label9.Caption  := Table1.FieldByName('TIME2').AsString;
   Label10.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label11.Caption := Table1.FieldByName('JOGO').AsString;
   Label12.Caption := Table1.FieldByName('DATA').AsString;
   Label13.Caption := Table1.FieldByName('TIME1').AsString;
   Edit9.Text      := Table1.FieldByName('RES1').AsString;
   Edit10.Text     := Table1.FieldByName('RES2').AsString;
   Edit11.Text     := Table1.FieldByName('PEN1').AsString;
   Edit12.Text     := Table1.FieldByName('PEN2').AsString;
   Label14.Caption := Table1.FieldByName('TIME2').AsString;
   Label15.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label16.Caption := Table1.FieldByName('JOGO').AsString;
   Label17.Caption := Table1.FieldByName('DATA').AsString;
   Label18.Caption := Table1.FieldByName('TIME1').AsString;
   Edit13.Text     := Table1.FieldByName('RES1').AsString;
   Edit14.Text     := Table1.FieldByName('RES2').AsString;
   Edit15.Text     := Table1.FieldByName('PEN1').AsString;
   Edit16.Text     := Table1.FieldByName('PEN2').AsString;
   Label19.Caption := Table1.FieldByName('TIME2').AsString;
   Label20.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label21.Caption := Table1.FieldByName('JOGO').AsString;
   Label22.Caption := Table1.FieldByName('DATA').AsString;
   Label23.Caption := Table1.FieldByName('TIME1').AsString;
   Edit17.Text     := Table1.FieldByName('RES1').AsString;
   Edit18.Text     := Table1.FieldByName('RES2').AsString;
   Edit19.Text     := Table1.FieldByName('PEN1').AsString;
   Edit20.Text     := Table1.FieldByName('PEN2').AsString;
   Label24.Caption := Table1.FieldByName('TIME2').AsString;
   Label25.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label26.Caption := Table1.FieldByName('JOGO').AsString;
   Label27.Caption := Table1.FieldByName('DATA').AsString;
   Label28.Caption := Table1.FieldByName('TIME1').AsString;
   Edit21.Text     := Table1.FieldByName('RES1').AsString;
   Edit22.Text     := Table1.FieldByName('RES2').AsString;
   Edit23.Text     := Table1.FieldByName('PEN1').AsString;
   Edit24.Text     := Table1.FieldByName('PEN2').AsString;
   Label29.Caption := Table1.FieldByName('TIME2').AsString;
   Label30.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label31.Caption := Table1.FieldByName('JOGO').AsString;
   Label32.Caption := Table1.FieldByName('DATA').AsString;
   Label33.Caption := Table1.FieldByName('TIME1').AsString;
   Edit25.Text     := Table1.FieldByName('RES1').AsString;
   Edit26.Text     := Table1.FieldByName('RES2').AsString;
   Edit27.Text     := Table1.FieldByName('PEN1').AsString;
   Edit28.Text     := Table1.FieldByName('PEN2').AsString;
   Label34.Caption := Table1.FieldByName('TIME2').AsString;
   Label35.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label36.Caption := Table1.FieldByName('JOGO').AsString;
   Label37.Caption := Table1.FieldByName('DATA').AsString;
   Label38.Caption := Table1.FieldByName('TIME1').AsString;
   Edit29.Text     := Table1.FieldByName('RES1').AsString;
   Edit30.Text     := Table1.FieldByName('RES2').AsString;
   Edit31.Text     := Table1.FieldByName('PEN1').AsString;
   Edit32.Text     := Table1.FieldByName('PEN2').AsString;
   Label39.Caption := Table1.FieldByName('TIME2').AsString;
   Label40.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   {Quartas de Final}
   Label41.Caption := Table1.FieldByName('JOGO').AsString;
   Label42.Caption := Table1.FieldByName('DATA').AsString;
   Label43.Caption := Table1.FieldByName('TIME1').AsString;
   Edit33.Text     := Table1.FieldByName('RES1').AsString;
   Edit34.Text     := Table1.FieldByName('RES2').AsString;
   Edit35.Text     := Table1.FieldByName('PEN1').AsString;
   Edit36.Text     := Table1.FieldByName('PEN2').AsString;
   Label44.Caption := Table1.FieldByName('TIME2').AsString;
   Label45.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label46.Caption := Table1.FieldByName('JOGO').AsString;
   Label47.Caption := Table1.FieldByName('DATA').AsString;
   Label48.Caption := Table1.FieldByName('TIME1').AsString;
   Edit37.Text     := Table1.FieldByName('RES1').AsString;
   Edit38.Text     := Table1.FieldByName('RES2').AsString;
   Edit39.Text     := Table1.FieldByName('PEN1').AsString;
   Edit40.Text     := Table1.FieldByName('PEN2').AsString;
   Label49.Caption := Table1.FieldByName('TIME2').AsString;
   Label50.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label51.Caption := Table1.FieldByName('JOGO').AsString;
   Label52.Caption := Table1.FieldByName('DATA').AsString;
   Label53.Caption := Table1.FieldByName('TIME1').AsString;
   Edit41.Text     := Table1.FieldByName('RES1').AsString;
   Edit42.Text     := Table1.FieldByName('RES2').AsString;
   Edit43.Text     := Table1.FieldByName('PEN1').AsString;
   Edit44.Text     := Table1.FieldByName('PEN2').AsString;
   Label54.Caption := Table1.FieldByName('TIME2').AsString;
   Label55.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label56.Caption := Table1.FieldByName('JOGO').AsString;
   Label57.Caption := Table1.FieldByName('DATA').AsString;
   Label58.Caption := Table1.FieldByName('TIME1').AsString;
   Edit45.Text     := Table1.FieldByName('RES1').AsString;
   Edit46.Text     := Table1.FieldByName('RES2').AsString;
   Edit47.Text     := Table1.FieldByName('PEN1').AsString;
   Edit48.Text     := Table1.FieldByName('PEN2').AsString;
   Label59.Caption := Table1.FieldByName('TIME2').AsString;
   Label60.Caption := Table1.FieldByName('LOCAL').AsString;
   Table1.Next;

   {Semi-Final}
   Label61.Caption := Table1.FieldByName('JOGO').AsString;
   Label62.Caption := Table1.FieldByName('DATA').AsString;
   Label63.Caption := Table1.FieldByName('TIME1').AsString;
   Edit49.Text     := Table1.FieldByName('RES1').AsString;
   Edit50.Text     := Table1.FieldByName('RES2').AsString;
   Edit51.Text     := Table1.FieldByName('PEN1').AsString;
   Edit52.Text     := Table1.FieldByName('PEN2').AsString;
   Label64.Caption := Table1.FieldByName('TIME2').AsString;
   Label65.Caption := Table1.FieldByName('LOCAL').AsString;

   Table1.Next;

   Label66.Caption := Table1.FieldByName('JOGO').AsString;
   Label67.Caption := Table1.FieldByName('DATA').AsString;
   Label68.Caption := Table1.FieldByName('TIME1').AsString;
   Edit53.Text     := Table1.FieldByName('RES1').AsString;
   Edit54.Text     := Table1.FieldByName('RES2').AsString;
   Edit55.Text     := Table1.FieldByName('PEN1').AsString;
   Edit56.Text     := Table1.FieldByName('PEN2').AsString;
   Label69.Caption := Table1.FieldByName('TIME2').AsString;
   Label70.Caption := Table1.FieldByName('LOCAL').AsString;
   Table1.Next;

   {3o. Lugar}
   Label71.Caption := Table1.FieldByName('JOGO').AsString;
   Label72.Caption := Table1.FieldByName('DATA').AsString;
   Label73.Caption := Table1.FieldByName('TIME1').AsString;
   Edit57.Text     := Table1.FieldByName('RES1').AsString;
   Edit58.Text     := Table1.FieldByName('RES2').AsString;
   Edit59.Text     := Table1.FieldByName('PEN1').AsString;
   Edit60.Text     := Table1.FieldByName('PEN2').AsString;
   Label74.Caption := Table1.FieldByName('TIME2').AsString;
   Label75.Caption := Table1.FieldByName('LOCAL').AsString;
   Table1.Next;

   {Final}
   Label76.Caption := Table1.FieldByName('JOGO').AsString;
   Label77.Caption := Table1.FieldByName('DATA').AsString;
   Label78.Caption := Table1.FieldByName('TIME1').AsString;
   Edit61.Text     := Table1.FieldByName('RES1').AsString;
   Edit62.Text     := Table1.FieldByName('RES2').AsString;
   Edit63.Text     := Table1.FieldByName('PEN1').AsString;
   Edit64.Text     := Table1.FieldByName('PEN2').AsString;
   Label79.Caption := Table1.FieldByName('TIME2').AsString;
   Label80.Caption := Table1.FieldByName('LOCAL').AsString;

   {Bandeiras se ja terminou os Jogos}
   if Table1.Locate('JOGO','Jogo G',[]) then begin
      if Table1.FieldByName('MARCA').AsString = 'v' then begin
         if Table1.FieldByName('RES1').AsInteger > Table1.FieldByName('RES2').AsInteger then begin
            Label85.Caption := Label73.Caption;
            Label86.Caption := Label74.Caption;
            Image3.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label73.Caption + '.jpg');
            Image4.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label74.Caption + '.jpg');
         end;
         if Table1.FieldByName('RES1').AsInteger < Table1.FieldByName('RES2').AsInteger then begin
            Label85.Caption := Label74.Caption;
            Label86.Caption := Label73.Caption;
            Image3.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label74.Caption + '.jpg');
            Image4.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label73.Caption + '.jpg');
         end;
      end;
   end;
   if Table1.Locate('JOGO','Jogo H',[]) then begin
      if Table1.FieldByName('MARCA').AsString = 'v' then begin
         if Table1.FieldByName('RES1').AsInteger > Table1.FieldByName('RES2').AsInteger then begin
            Label83.Caption := Label78.Caption;
            Label84.Caption := Label79.Caption;
            Image5.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label79.Caption + '.jpg');
            cArqImage := Label78.Caption;
         end;
         if Table1.FieldByName('RES1').AsInteger < Table1.FieldByName('RES2').AsInteger then begin
            Label83.Caption := Label79.Caption;
            Label84.Caption := Label78.Caption;
            Image5.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label78.Caption + '.jpg');
            cArqImage := Label79.Caption;
         end;
      end;
   end;
end;

procedure TJ2Fase.BitBtn1Click(Sender: TObject);
begin
  Table1.Close;
end;

procedure TJ2Fase.Edit2Exit(Sender: TObject);
begin
  if Edit1.Text = Edit2.Text then
  begin
    Edit3.Enabled := true;
    Edit4.Enabled := true;
    Edit3.SetFocus;
  end; //if.

  if Edit1.Text > Edit2.Text then
  begin
    Label48.Caption := Label3.Caption;
    Gravar(Label3.Caption,'Jogo 1','Jogo B','TIME1',StrToInt(Edit1.Text),StrToInt(Edit2.Text),0,0);
  end; //if.

  if Edit1.Text < Edit2.Text then
  begin
    Label48.Caption := Label4.Caption;
    Gravar(Label4.Caption,'Jogo 1','Jogo B','TIME1',StrToInt(Edit1.Text),StrToInt(Edit2.Text),0,0)
  end; //if.
end;

procedure TJ2Fase.Edit6Exit(Sender: TObject);
begin
    if Edit5.Text = Edit6.Text then begin
       Edit7.Enabled := true;
       Edit8.Enabled := true;
       Edit7.SetFocus;
    end;
    if Edit5.Text > Edit6.Text then begin
       Label43.Caption := Label8.Caption;
       Gravar(Label8.Caption,'Jogo 2','Jogo A','TIME1',StrToInt(Edit5.Text),StrToInt(Edit6.Text),0,0);
    end;
    if Edit5.Text < Edit6.Text then begin
       Label43.Caption := Label9.Caption;
       Gravar(Label9.Caption,'Jogo 2','Jogo A','TIME1',StrToInt(Edit5.Text),StrToInt(Edit6.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit10Exit(Sender: TObject);
begin
    if Edit9.Text = Edit10.Text then begin
       Edit11.Enabled := true;
       Edit12.Enabled := true;
       Edit11.SetFocus;
    end;
    if Edit9.Text > Edit10.Text then begin
       Label58.Caption := Label13.Caption;
       Gravar(Label13.Caption,'Jogo 3','Jogo D','TIME1',StrToInt(Edit9.Text),StrToInt(Edit10.Text),0,0);
    end;
    if Edit9.Text < Edit10.Text then begin
       Label58.Caption := Label14.Caption;
       Gravar(Label14.Caption,'Jogo 3','Jogo D','TIME1',StrToInt(Edit9.Text),StrToInt(Edit10.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit14Exit(Sender: TObject);
begin
    if Edit13.Text = Edit14.Text then begin
       Edit15.Enabled := true;
       Edit16.Enabled := true;
       Edit15.SetFocus;
    end;
    if Edit13.Text > Edit14.Text then begin
       Label53.Caption := Label18.Caption;
       Gravar(Label18.Caption,'Jogo 4','Jogo C','TIME1',StrToInt(Edit13.Text),StrToInt(Edit14.Text),0,0);
    end;
    if Edit13.Text < Edit14.Text then begin
       Label53.Caption := Label19.Caption;
       Gravar(Label19.Caption,'Jogo 4','Jogo C','TIME1',StrToInt(Edit13.Text),StrToInt(Edit14.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit18Exit(Sender: TObject);
begin
    if Edit17.Text = Edit18.Text then begin
       Edit19.Enabled := true;
       Edit20.Enabled := true;
       Edit19.SetFocus;
    end;
    if Edit17.Text > Edit18.Text then begin
       Label49.Caption := Label23.Caption;
       Gravar(Label23.Caption,'Jogo 5','Jogo B','TIME2',StrToInt(Edit17.Text),StrToInt(Edit18.Text),0,0);
    end;
    if Edit17.Text < Edit18.Text then begin
       Label49.Caption := Label24.Caption;
       Gravar(Label24.Caption,'Jogo 5','Jogo B','TIME2',StrToInt(Edit17.Text),StrToInt(Edit18.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit22Exit(Sender: TObject);
begin
    if Edit21.Text = Edit22.Text then begin
       Edit23.Enabled := true;
       Edit24.Enabled := true;
       Edit23.SetFocus;
    end;
    if Edit21.Text > Edit22.Text then begin
       Label44.Caption := Label28.Caption;
       Gravar(Label28.Caption,'Jogo 6','Jogo A','TIME2',StrToInt(Edit21.Text),StrToInt(Edit22.Text),0,0);
    end;
    if Edit21.Text < Edit22.Text then begin
       Label44.Caption := Label29.Caption;
       Gravar(Label29.Caption,'Jogo 6','Jogo A','TIME2',StrToInt(Edit21.Text),StrToInt(Edit22.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit26Exit(Sender: TObject);
begin
    if Edit25.Text = Edit26.Text then begin
       Edit27.Enabled := true;
       Edit28.Enabled := true;
       Edit27.SetFocus;
    end;
    if Edit25.Text > Edit26.Text then begin
       Label59.Caption := Label33.Caption;
       Gravar(Label33.Caption,'Jogo 7','Jogo D','TIME2',StrToInt(Edit25.Text),StrToInt(Edit26.Text),0,0);
    end;
    if Edit25.Text < Edit26.Text then begin
       Label59.Caption := Label34.Caption;
       Gravar(Label34.Caption,'Jogo 7','Jogo D','TIME2',StrToInt(Edit25.Text),StrToInt(Edit26.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit30Exit(Sender: TObject);
begin
    if Edit29.Text = Edit30.Text then begin
       Edit31.Enabled := true;
       Edit32.Enabled := true;
       Edit31.SetFocus;
    end;
    if Edit29.Text > Edit30.Text then begin
       Label54.Caption := Label38.Caption;
       Gravar(Label38.Caption,'Jogo 8','Jogo C','TIME2',StrToInt(Edit29.Text),StrToInt(Edit30.Text),0,0);
    end;
    if Edit29.Text < Edit30.Text then begin
       Label54.Caption := Label39.Caption;
       Gravar(Label39.Caption,'Jogo 8','Jogo C','TIME2',StrToInt(Edit29.Text),StrToInt(Edit30.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit34Exit(Sender: TObject);
begin
    if Edit33.Text = Edit34.Text then begin
       Edit35.Enabled := true;
       Edit36.Enabled := true;
       Edit35.SetFocus;
    end;
    if Edit33.Text > Edit34.Text then begin
       Label68.Caption := Label43.Caption;
       Gravar(Label43.Caption,'Jogo A','Jogo F','TIME1',StrToInt(Edit33.Text),StrToInt(Edit34.Text),0,0);
    end;
    if Edit33.Text < Edit34.Text then begin
       Label68.Caption := Label44.Caption;
       Gravar(Label44.Caption,'Jogo A','Jogo F','TIME1',StrToInt(Edit33.Text),StrToInt(Edit34.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit38Exit(Sender: TObject);
begin
    if Edit37.Text = Edit38.Text then begin
       Edit39.Enabled := true;
       Edit40.Enabled := true;
       Edit39.SetFocus;
    end;
    if Edit37.Text > Edit38.Text then begin
       Label63.Caption := Label48.Caption;
       Gravar(Label48.Caption,'Jogo B','Jogo E','TIME1',StrToInt(Edit37.Text),StrToInt(Edit38.Text),0,0);
    end;
    if Edit37.Text < Edit38.Text then begin
       Label63.Caption := Label49.Caption;
       Gravar(Label49.Caption,'Jogo B','Jogo E','TIME1',StrToInt(Edit37.Text),StrToInt(Edit38.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit42Exit(Sender: TObject);
begin
    if Edit41.Text = Edit42.Text then begin
       Edit43.Enabled := true;
       Edit44.Enabled := true;
       Edit43.SetFocus;
    end;
    if Edit41.Text > Edit42.Text then begin
       Label64.Caption := Label53.Caption;
       Gravar(Label53.Caption,'Jogo C','Jogo E','TIME2',StrToInt(Edit41.Text),StrToInt(Edit42.Text),0,0);
    end;
    if Edit41.Text < Edit42.Text then begin
       Label64.Caption := Label54.Caption;
       Gravar(Label54.Caption,'Jogo C','Jogo E','TIME2',StrToInt(Edit41.Text),StrToInt(Edit42.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit46Exit(Sender: TObject);
begin
    if Edit45.Text = Edit46.Text then begin
       Edit47.Enabled := true;
       Edit48.Enabled := true;
       Edit47.SetFocus;
    end;
    if Edit45.Text > Edit46.Text then begin
       Label69.Caption := Label58.Caption;
       Gravar(Label58.Caption,'Jogo D','Jogo F','TIME2',StrToInt(Edit45.Text),StrToInt(Edit46.Text),0,0);
    end;
    if Edit45.Text < Edit46.Text then begin
       Label69.Caption := Label59.Caption;
       Gravar(Label59.Caption,'Jogo D','Jogo F','TIME2',StrToInt(Edit45.Text),StrToInt(Edit46.Text),0,0)
    end;
end;

procedure TJ2Fase.Edit50Exit(Sender: TObject);
begin
    if Edit49.Text = Edit50.Text then begin
       Edit51.Enabled := true;
       Edit52.Enabled := true;
       Edit51.SetFocus;
    end;
    if Edit49.Text > Edit50.Text then begin
       Label78.Caption := Label63.Caption;
       Label73.Caption := Label64.Caption;
       Gravar(Label63.Caption,'Jogo E','Jogo H','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),0,0);
       Gravar(Label64.Caption,'Jogo E','Jogo G','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),0,0);
    end;
    if Edit49.Text < Edit50.Text then begin
       Label78.Caption := Label64.Caption;
       Label73.Caption := Label63.Caption;
       Gravar(Label64.Caption,'Jogo E','Jogo H','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),0,0);
       Gravar(Label63.Caption,'Jogo E','Jogo G','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),0,0);
    end;

end;

procedure TJ2Fase.Edit54Exit(Sender: TObject);
begin
    if Edit53.Text = Edit54.Text then begin
       Edit55.Enabled := true;
       Edit56.Enabled := true;
       Edit55.SetFocus;
    end;
    if Edit53.Text > Edit54.Text then begin
       Label79.Caption := Label68.Caption;
       Label74.Caption := Label69.Caption;
       Gravar(Label68.Caption,'Jogo F','Jogo H','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),0,0);
       Gravar(Label69.Caption,'Jogo F','Jogo G','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),0,0);
    end;
    if Edit53.Text < Edit54.Text then begin
       Label79.Caption := Label69.Caption;
       Label74.Caption := Label68.Caption;
       Gravar(Label69.Caption,'Jogo F','Jogo H','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),0,0);
       Gravar(Label68.Caption,'Jogo F','Jogo G','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),0,0);
    end;

end;

procedure TJ2Fase.Edit58Exit(Sender: TObject);
begin
    if Edit57.Text = Edit58.Text then begin
       Edit59.Enabled := true;
       Edit60.Enabled := true;
       Edit59.SetFocus;
    end;
    if Table1.Locate('JOGO','Jogo G',[]) then begin
       Table1.Edit;
       Table1.FieldByName('RES1').AsInteger := StrToInt(Edit57.Text);
       Table1.FieldByName('RES2').AsInteger := StrToInt(Edit58.Text);
       Table1.FieldByName('PEN1').AsInteger := 0;
       Table1.FieldByName('PEN2').AsInteger := 0;
       Table1.FieldByName('MARCA').AsString := 'v';
    end;
    Table1.Post;
    if Edit57.Text > Edit58.Text then begin
       Label85.Caption := Label73.Caption;
       Label86.Caption := Label74.Caption;
       Image3.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label73.Caption + '.jpg');
       Image4.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label74.Caption + '.jpg');
    end;
    if Edit57.Text < Edit58.Text then begin
       Label85.Caption := Label74.Caption;
       Label86.Caption := Label73.Caption;
       Image3.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label74.Caption + '.jpg');
       Image4.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label73.Caption + '.jpg');
    end;
end;

procedure TJ2Fase.Edit62Exit(Sender: TObject);
begin
    if Edit61.Text = Edit62.Text then begin
       Edit63.Enabled := true;
       Edit64.Enabled := true;
       Edit63.SetFocus;
    end;
    if Table1.Locate('JOGO','Jogo H',[]) then begin
       Table1.Edit;
       Table1.FieldByName('RES1').AsInteger := StrToInt(Edit61.Text);
       Table1.FieldByName('RES2').AsInteger := StrToInt(Edit62.Text);
       Table1.FieldByName('PEN1').AsInteger := 0;
       Table1.FieldByName('PEN2').AsInteger := 0;
       Table1.FieldByName('MARCA').AsString := 'v';
    end;
    Table1.Post;
    if Edit61.Text > Edit62.Text then begin
       Label83.Caption := Label78.Caption;
       Label84.Caption := Label79.Caption;
       Image5.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label79.Caption + '.jpg');
       cArqImage := Label78.Caption;
    end;
    if Edit61.Text < Edit62.Text then begin
       Label83.Caption := Label79.Caption;
       Label84.Caption := Label78.Caption;
       Image5.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label78.Caption + '.jpg');
       cArqImage := Label79.Caption;
    end;
end;

procedure TJ2Fase.Edit4Exit(Sender: TObject);
begin
    if Edit3.Text > Edit4.Text then begin
       Label48.Caption := Label3.Caption;
       Gravar(Label3.Caption,'Jogo 1','Jogo B','TIME1',StrToInt(Edit1.Text),StrToInt(Edit2.Text),StrToInt(Edit3.Text),StrToInt(Edit4.Text));
    end;
    if Edit3.Text < Edit4.Text then begin
       Label48.Caption := Label4.Caption;
       Gravar(Label4.Caption,'Jogo 1','Jogo B','TIME1',StrToInt(Edit1.Text),StrToInt(Edit2.Text),StrToInt(Edit3.Text),StrToInt(Edit4.Text))
    end;
end;

procedure TJ2Fase.Edit8Exit(Sender: TObject);
begin
    if Edit7.Text > Edit8.Text then begin
       Label43.Caption := Label8.Caption;
       Gravar(Label8.Caption,'Jogo 2','Jogo A','TIME1',StrToInt(Edit5.Text),StrToInt(Edit6.Text),StrToInt(Edit7.Text),StrToInt(Edit8.Text));
    end;
    if Edit7.Text < Edit8.Text then begin
       Label43.Caption := Label9.Caption;
       Gravar(Label9.Caption,'Jogo 2','Jogo A','TIME1',StrToInt(Edit5.Text),StrToInt(Edit6.Text),StrToInt(Edit7.Text),StrToInt(Edit8.Text))
    end;

end;

procedure TJ2Fase.Edit12Exit(Sender: TObject);
begin
    if Edit11.Text > Edit12.Text then begin
       Label58.Caption := Label13.Caption;
       Gravar(Label13.Caption,'Jogo 3','Jogo D','TIME1',StrToInt(Edit9.Text),StrToInt(Edit10.Text),StrToInt(Edit11.Text),StrToInt(Edit12.Text));
    end;
    if Edit11.Text < Edit12.Text then begin
       Label58.Caption := Label14.Caption;
       Gravar(Label14.Caption,'Jogo 3','Jogo D','TIME1',StrToInt(Edit9.Text),StrToInt(Edit10.Text),StrToInt(Edit11.Text),StrToInt(Edit12.Text))
    end;

end;

procedure TJ2Fase.Edit16Exit(Sender: TObject);
begin
    if Edit15.Text > Edit16.Text then begin
       Label53.Caption := Label18.Caption;
       Gravar(Label18.Caption,'Jogo 4','Jogo C','TIME1',StrToInt(Edit13.Text),StrToInt(Edit14.Text),StrToInt(Edit15.Text),StrToInt(Edit16.Text));
    end;
    if Edit15.Text < Edit16.Text then begin
       Label53.Caption := Label19.Caption;
       Gravar(Label19.Caption,'Jogo 4','Jogo C','TIME1',StrToInt(Edit13.Text),StrToInt(Edit14.Text),StrToInt(Edit15.Text),StrToInt(Edit16.Text))
    end;

end;

procedure TJ2Fase.Edit20Exit(Sender: TObject);
begin
    if Edit19.Text > Edit20.Text then begin
       Label49.Caption := Label23.Caption;
       Gravar(Label23.Caption,'Jogo 5','Jogo B','TIME2',StrToInt(Edit17.Text),StrToInt(Edit18.Text),StrToInt(Edit19.Text),StrToInt(Edit20.Text));
    end;
    if Edit19.Text < Edit20.Text then begin
       Label49.Caption := Label24.Caption;
       Gravar(Label24.Caption,'Jogo 5','Jogo B','TIME2',StrToInt(Edit17.Text),StrToInt(Edit18.Text),StrToInt(Edit19.Text),StrToInt(Edit20.Text))
    end;

end;

procedure TJ2Fase.Edit24Exit(Sender: TObject);
begin
    if Edit23.Text > Edit24.Text then begin
       Label44.Caption := Label28.Caption;
       Gravar(Label28.Caption,'Jogo 6','Jogo A','TIME2',StrToInt(Edit21.Text),StrToInt(Edit22.Text),StrToInt(Edit23.Text),StrToInt(Edit24.Text));
    end;
    if Edit23.Text < Edit24.Text then begin
       Label44.Caption := Label29.Caption;
       Gravar(Label29.Caption,'Jogo 6','Jogo A','TIME2',StrToInt(Edit21.Text),StrToInt(Edit22.Text),StrToInt(Edit23.Text),StrToInt(Edit24.Text))
    end;

end;

procedure TJ2Fase.Edit28Exit(Sender: TObject);
begin
    if Edit27.Text > Edit28.Text then begin
       Label59.Caption := Label33.Caption;
       Gravar(Label33.Caption,'Jogo 7','Jogo D','TIME2',StrToInt(Edit25.Text),StrToInt(Edit26.Text),StrToInt(Edit27.Text),StrToInt(Edit28.Text));
    end;
    if Edit27.Text < Edit28.Text then begin
       Label59.Caption := Label34.Caption;
       Gravar(Label34.Caption,'Jogo 7','Jogo D','TIME2',StrToInt(Edit25.Text),StrToInt(Edit26.Text),StrToInt(Edit27.Text),StrToInt(Edit28.Text))
    end;

end;

procedure TJ2Fase.Edit32Exit(Sender: TObject);
begin
    if Edit31.Text > Edit32.Text then begin
       Label54.Caption := Label38.Caption;
       Gravar(Label38.Caption,'Jogo 8','Jogo C','TIME2',StrToInt(Edit29.Text),StrToInt(Edit30.Text),StrToInt(Edit31.Text),StrToInt(Edit32.Text));
    end;
    if Edit31.Text < Edit32.Text then begin
       Label54.Caption := Label39.Caption;
       Gravar(Label39.Caption,'Jogo 8','Jogo C','TIME2',StrToInt(Edit29.Text),StrToInt(Edit30.Text),StrToInt(Edit31.Text),StrToInt(Edit32.Text))
    end;

end;

procedure TJ2Fase.Edit36Exit(Sender: TObject);
begin
    if Edit35.Text > Edit36.Text then begin
       Label68.Caption := Label43.Caption;
       Gravar(Label43.Caption,'Jogo A','Jogo F','TIME1',StrToInt(Edit33.Text),StrToInt(Edit34.Text),StrToInt(Edit35.Text),StrToInt(Edit36.Text));
    end;
    if Edit35.Text < Edit36.Text then begin
       Label68.Caption := Label44.Caption;
       Gravar(Label44.Caption,'Jogo A','Jogo F','TIME1',StrToInt(Edit33.Text),StrToInt(Edit34.Text),StrToInt(Edit35.Text),StrToInt(Edit36.Text))
    end;

end;

procedure TJ2Fase.Edit40Exit(Sender: TObject);
begin
  if Edit39.Text > Edit40.Text then
  begin
    Label63.Caption := Label48.Caption;
    Gravar(Label48.Caption,'Jogo B','Jogo E','TIME1',StrToInt(Edit37.Text),StrToInt(Edit38.Text),StrToInt(Edit39.Text),StrToInt(Edit40.Text));
  end; //if.

  if Edit39.Text < Edit40.Text then
  begin
    Label63.Caption := Label49.Caption;
    Gravar(Label49.Caption,'Jogo B','Jogo E','TIME1',StrToInt(Edit37.Text),StrToInt(Edit38.Text),StrToInt(Edit39.Text),StrToInt(Edit40.Text))
  end; //if.
end;

procedure TJ2Fase.Edit44Exit(Sender: TObject);
begin
  if Edit43.Text > Edit44.Text then
  begin
    Label64.Caption := Label53.Caption;
    Gravar(Label53.Caption,'Jogo C','Jogo E','TIME2',StrToInt(Edit41.Text),StrToInt(Edit42.Text),StrToInt(Edit43.Text),StrToInt(Edit44.Text));
  end; //if.

  if Edit43.Text < Edit44.Text then
  begin
    Label64.Caption := Label54.Caption;
    Gravar(Label54.Caption,'Jogo C','Jogo E','TIME2',StrToInt(Edit41.Text),StrToInt(Edit42.Text),StrToInt(Edit43.Text),StrToInt(Edit44.Text))
  end; //if.
end;

procedure TJ2Fase.Edit48Exit(Sender: TObject);
begin
  if Edit47.Text > Edit48.Text then
  begin
    Label69.Caption := Label58.Caption;
    Gravar(Label58.Caption,'Jogo D','Jogo F','TIME2',StrToInt(Edit45.Text),StrToInt(Edit46.Text),StrToInt(Edit47.Text),StrToInt(Edit48.Text));
  end; //if.

  if Edit48.Text < Edit48.Text then
  begin
    Label69.Caption := Label59.Caption;
    Gravar(Label59.Caption,'Jogo D','Jogo F','TIME2',StrToInt(Edit45.Text),StrToInt(Edit46.Text),StrToInt(Edit47.Text),StrToInt(Edit48.Text))
  end; //if.
end;

procedure TJ2Fase.Edit52Exit(Sender: TObject);
begin
  if Edit51.Text > Edit52.Text then
  begin
    Label78.Caption := Label63.Caption;
    Label73.Caption := Label64.Caption;
    Gravar(Label63.Caption,'Jogo E','Jogo H','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),StrToInt(Edit51.Text),StrToInt(Edit52.Text));
    Gravar(Label64.Caption,'Jogo E','Jogo G','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),StrToInt(Edit51.Text),StrToInt(Edit52.Text));
  end; //if.

  if Edit51.Text < Edit52.Text then
   begin
    Label78.Caption := Label64.Caption;
    Label73.Caption := Label63.Caption;
    Gravar(Label64.Caption,'Jogo E','Jogo H','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),StrToInt(Edit51.Text),StrToInt(Edit52.Text));
    Gravar(Label63.Caption,'Jogo E','Jogo G','TIME1',StrToInt(Edit49.Text),StrToInt(Edit50.Text),StrToInt(Edit51.Text),StrToInt(Edit52.Text));
  end; //if.
end;

procedure TJ2Fase.Edit56Exit(Sender: TObject);
begin
  if Edit55.Text > Edit56.Text then
  begin
    Label79.Caption := Label68.Caption;
    Label74.Caption := Label69.Caption;
    Gravar(Label68.Caption,'Jogo F','Jogo H','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),StrToInt(Edit55.Text),StrToInt(Edit56.Text));
    Gravar(Label69.Caption,'Jogo F','Jogo G','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),StrToInt(Edit55.Text),StrToInt(Edit56.Text));
  end; //if.

  if Edit55.Text < Edit56.Text then
  begin
    Label79.Caption := Label69.Caption;
    Label74.Caption := Label68.Caption;
    Gravar(Label69.Caption,'Jogo F','Jogo H','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),StrToInt(Edit55.Text),StrToInt(Edit56.Text));
    Gravar(Label68.Caption,'Jogo F','Jogo G','TIME2',StrToInt(Edit53.Text),StrToInt(Edit54.Text),StrToInt(Edit55.Text),StrToInt(Edit56.Text));
  end; //if.
end;

procedure TJ2Fase.Edit60Exit(Sender: TObject);
begin
  if Table1.Locate('JOGO','Jogo G',[]) then
  begin
    Table1.Edit;
    Table1.FieldByName('RES1').AsInteger := StrToInt(Edit57.Text);
    Table1.FieldByName('RES2').AsInteger := StrToInt(Edit58.Text);
    Table1.FieldByName('PEN1').AsInteger := StrToInt(Edit59.Text);
    Table1.FieldByName('PEN2').AsInteger := StrToInt(Edit60.Text);
    Table1.FieldByName('MARCA').AsString := 'v';
  end; //if.
  Table1.Post;
  if Edit59.Text > Edit60.Text then
  begin
    Label85.Caption := Label73.Caption;
    Label86.Caption := Label74.Caption;
    Image3.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label73.Caption + '.jpg');
    Image4.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label74.Caption + '.jpg');
  end; //if.

  if Edit59.Text < Edit60.Text then
  begin
    Label85.Caption := Label74.Caption;
    Label86.Caption := Label73.Caption;
    Image3.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label74.Caption + '.jpg');
    Image4.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label73.Caption + '.jpg');
  end; //if.
end;

procedure TJ2Fase.Edit64Exit(Sender: TObject);
begin
  if Table1.Locate('JOGO','Jogo H',[]) then
  begin
     Table1.Edit;
     Table1.FieldByName('RES1').AsInteger := StrToInt(Edit61.Text);
     Table1.FieldByName('RES2').AsInteger := StrToInt(Edit62.Text);
     Table1.FieldByName('PEN1').AsInteger := StrToInt(Edit63.Text);
     Table1.FieldByName('PEN2').AsInteger := StrToInt(Edit64.Text);
     Table1.FieldByName('MARCA').AsString := 'v';
  end; //if.
  Table1.Post;
  if Edit63.Text > Edit64.Text then
  begin
     Label83.Caption := Label78.Caption;
     Label84.Caption := Label79.Caption;
     Image5.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label79.Caption + '.jpg');
     cArqImage := Label78.Caption;
  end; //if.

  if Edit63.Text < Edit64.Text then
  begin
     Label83.Caption := Label79.Caption;
     Label84.Caption := Label78.Caption;
     Image5.Picture.LoadFromFile('C:\Sis Copa 2006\Arquivos\' + Label78.Caption + '.jpg');
     cArqImage := Label79.Caption;
  end; //if.
end;

procedure TJ2Fase.Gravar(Time,J1,J2,Campo:String;nRes1,nRes2,nPen1,nPen2:Integer);
begin
  if Table1.Locate('JOGO',J1,[]) then
  begin
    Table1.Edit;
    Table1.FieldByName('RES1').AsInteger := nRes1;
    Table1.FieldByName('RES2').AsInteger := nRes2;
    Table1.FieldByName('PEN1').AsInteger := nPen1;
    Table1.FieldByName('PEN2').AsInteger := nPen2;
    Table1.FieldByName('MARCA').AsString := 'v';
 end; //if.

  if Table1.Locate('JOGO',J2,[]) then
  begin
    Table1.Edit;
    Table1.FieldByName(CAMPO).AsString := Time;
  end; //if.
  Table1.Post;
end;

end.
