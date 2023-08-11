unit ArtilheirosForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleServer, Word97, ComCtrls, Buttons;

type
  TArtilheiros = class(TForm)
    StatusBar1: TStatusBar;
    RichEdit1: TRichEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Artilheiros: TArtilheiros;

implementation

{$R *.DFM}

procedure TArtilheiros.FormCreate(Sender: TObject);
begin
    RichEdit1.Lines.LoadFromFile('C:\Sis Copa 2006\Artilheiros.rtf');
end;

end.
