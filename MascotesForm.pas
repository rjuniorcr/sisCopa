unit MascotesForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TMascotes = class(TForm)
    RichEdit1: TRichEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Image13: TImage;
    Label31: TLabel;
    Image14: TImage;
    Label32: TLabel;
    Image15: TImage;
    Label33: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mascotes: TMascotes;

implementation

{$R *.DFM}

procedure TMascotes.FormCreate(Sender: TObject);
begin
    RichEdit1.Lines.LoadFromFile('C:\Sis Copa 2006\Mascotes.rtf');
end;

end.
