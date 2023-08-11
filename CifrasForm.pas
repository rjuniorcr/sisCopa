unit CifrasForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons;

type
  TCifras = class(TForm)
    RichEdit1: TRichEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cifras: TCifras;

implementation

{$R *.DFM}

procedure TCifras.FormCreate(Sender: TObject);
begin
    RichEdit1.Lines.LoadFromFile('C:\Sis Copa 2006\Cifras.rtf');
end;

end.
