unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Menus, Grids, DBGrids, ExtCtrls, Db, DBTables;
         
type
  TMain = class(TForm)
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    Cadastro1: TMenuItem;
    Jogos1: TMenuItem;
    N1: TMenuItem;
    Sada1: TMenuItem;
    Consult1: TMenuItem;
    Classificao1: TMenuItem;
    GrupoA1: TMenuItem;
    GrupoB1: TMenuItem;
    GrupoC1: TMenuItem;
    GrupoD1: TMenuItem;
    GrupoE1: TMenuItem;
    GrupoF1: TMenuItem;
    GrupoG1: TMenuItem;
    GrupoH1: TMenuItem;
    Sobre1: TMenuItem;
    Contedo1: TMenuItem;
    TpicosdeAjuda1: TMenuItem;
    ComoUsaraAjuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    AtualizarDados1: TMenuItem;
    Image1: TImage;
    Grficos1: TMenuItem;
    Jogos2aFase1: TMenuItem;
    Curiosidades1: TMenuItem;
    OsArtilheiros1: TMenuItem;
    OsMascotes1: TMenuItem;
    RankingdasCopas1: TMenuItem;
    CifrasdaCopa20021: TMenuItem;
    VocSabia2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Contedo1Click(Sender: TObject);
    procedure TpicosdeAjuda1Click(Sender: TObject);
    procedure ComoUsaraAjuda2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure Sada1Click(Sender: TObject);
    procedure Jogos1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarDados1Click(Sender: TObject);
    procedure GrupoA1Click(Sender: TObject);
    procedure GrupoB1Click(Sender: TObject);
    procedure GrupoC1Click(Sender: TObject);
    procedure GrupoD1Click(Sender: TObject);
    procedure GrupoE1Click(Sender: TObject);
    procedure GrupoF1Click(Sender: TObject);
    procedure GrupoG1Click(Sender: TObject);
    procedure GrupoH1Click(Sender: TObject);
    procedure Jogos2aFase1Click(Sender: TObject);
    procedure OsArtilheiros1Click(Sender: TObject);
    procedure RankingdasCopas1Click(Sender: TObject);
    procedure CifrasdaCopa20021Click(Sender: TObject);
    procedure VocSabia2Click(Sender: TObject);
    procedure TabelaCompletaemBranco1Click(Sender: TObject);
    procedure OsMascotes1Click(Sender: TObject);
    private
    { Private declarations }
    procedure ShowHint(Sender:TObject);
  public
    { Public declarations }

  end;

var
  Main: TMain;
  cVar:String;

implementation

uses AboutBoxForm, J1FaseForm, AtualizarDadosForm, ClasForm, Unit1,
  TabBrancoForm, J2FaseForm, ArtilheirosForm, RankingForm, CifrasForm,
  VoceSabiaForm, TabelaBrancoForm, MascotesForm;

{$R *.DFM}

procedure TMain.ShowHint(Sender:TObject);
begin
    StatusBar1.Panels.Items[0].Text := Application.Hint;
end;    

procedure TMain.FormCreate(Sender: TObject);
begin
    Application.OnHint := ShowHint;
end;

procedure TMain.Contedo1Click(Sender: TObject);
begin
    Application.HelpCommand(HELP_CONTENTS,0);
end;

procedure TMain.TpicosdeAjuda1Click(Sender: TObject);
const
    EmptyString:pChar='';
begin
    Application.HelpCommand(HELP_PARTIALKEY, LongInt(EmptyString));
end;

procedure TMain.ComoUsaraAjuda2Click(Sender: TObject);
begin
    Application.HelpCommand(HELP_HELPONHELP,0);
end;

procedure TMain.FormDestroy(Sender: TObject);
begin
    Application.HelpCommand(HELP_QUIT,0);
end;

procedure TMain.SobreoSistema1Click(Sender: TObject);
begin
    AboutBox.ShowModal;
end;

procedure TMain.Sada1Click(Sender: TObject);
begin
    Close;
end;

procedure TMain.Jogos1Click(Sender: TObject);
begin
    J1Fase.ShowModal;
end;

procedure TMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
   key := #0;
   perform(wm_nextdlgctl,0,0);
end;
end;

procedure TMain.AtualizarDados1Click(Sender: TObject);
begin
    AtualizarDados.ShowModal;
end;

procedure TMain.GrupoA1Click(Sender: TObject);
begin
    cVar := 'A';
    Clas.ShowModal;
end;

procedure TMain.GrupoB1Click(Sender: TObject);
begin
    cVar := 'B';
    Clas.ShowModal;
end;

procedure TMain.GrupoC1Click(Sender: TObject);
begin
    cVar := 'C';
    Clas.ShowModal;
end;

procedure TMain.GrupoD1Click(Sender: TObject);
begin
    cVar := 'D';
    Clas.ShowModal;
end;

procedure TMain.GrupoE1Click(Sender: TObject);
begin
    cVar := 'E';
    Clas.ShowModal;
end;

procedure TMain.GrupoF1Click(Sender: TObject);
begin
    cVar := 'F';
    Clas.ShowModal;
end;

procedure TMain.GrupoG1Click(Sender: TObject);
begin
    cVar := 'G';
    Clas.ShowModal;
end;

procedure TMain.GrupoH1Click(Sender: TObject);
begin
    cVar := 'H';
    Clas.ShowModal;
end;

procedure TMain.Jogos2aFase1Click(Sender: TObject);
begin
    J2Fase.ShowModal;
end;

procedure TMain.OsArtilheiros1Click(Sender: TObject);
begin
    Artilheiros.ShowModal;
end;

procedure TMain.RankingdasCopas1Click(Sender: TObject);
begin
    Ranking.ShowModal;
end;

procedure TMain.CifrasdaCopa20021Click(Sender: TObject);
begin
    Cifras.ShowModal;
end;

procedure TMain.VocSabia2Click(Sender: TObject);
begin
    VoceSabia.ShowModal;
end;

procedure TMain.TabelaCompletaemBranco1Click(Sender: TObject);
begin
    TabelaBranco.ShowModal;
end;

procedure TMain.OsMascotes1Click(Sender: TObject);
begin
    Mascotes.ShowModal;
end;

end.
