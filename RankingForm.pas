unit RankingForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons;

type
  TRanking = class(TForm)
    RichEdit1: TRichEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ranking: TRanking;

implementation

{$R *.DFM}

procedure TRanking.FormCreate(Sender: TObject);
begin
    RichEdit1.Lines.LoadFromFile('C:\Sis Copa 2006\Ranking.rtf');
end;

end.
