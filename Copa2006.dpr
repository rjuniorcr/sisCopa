program Copa2006;

uses
  Forms,
  MainForm in 'MainForm.pas' {Main},
  AboutBoxForm in 'AboutBoxForm.pas' {AboutBox},
  SplashScreenForm in 'SplashScreenForm.pas' {SplashScreen},
  J1FaseForm in 'J1FaseForm.pas' {J1Fase},
  AtualizarDadosForm in 'AtualizarDadosForm.pas' {AtualizarDados},
  ClasForm in 'ClasForm.pas' {Clas},
  J2FaseForm in 'J2FaseForm.pas' {J2Fase},
  ArtilheirosForm in 'ArtilheirosForm.pas' {Artilheiros},
  RankingForm in 'RankingForm.pas' {Ranking},
  CifrasForm in 'CifrasForm.pas' {Cifras},
  VoceSabiaForm in 'VoceSabiaForm.pas' {VoceSabia},
  TabelaBrancoForm in 'TabelaBrancoForm.pas' {TabelaBranco},
  MascotesForm in 'MascotesForm.pas' {Mascotes};

{$R *.RES}

begin
  SplashScreen := TSplashScreen.Create(Application);
  SplashScreen.Show;
  SplashScreen.Refresh;
  Application.Initialize;
  Application.HelpFile := 'C:\Sis Copa 2006\Copa2006.hlp';
  //Application.HelpFile := 'C:\Copa2002\Copa2002.hlp';
  Application.Title := 'Copa 2006';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TJ1Fase, J1Fase);
  Application.CreateForm(TAtualizarDados, AtualizarDados);
  Application.CreateForm(TClas, Clas);
  Application.CreateForm(TJ2Fase, J2Fase);
  Application.CreateForm(TArtilheiros, Artilheiros);
  Application.CreateForm(TRanking, Ranking);
  Application.CreateForm(TCifras, Cifras);
  Application.CreateForm(TVoceSabia, VoceSabia);
  Application.CreateForm(TTabelaBranco, TabelaBranco);
  Application.CreateForm(TMascotes, Mascotes);
  SplashScreen.Free;
  Application.Run;
end.
