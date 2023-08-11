unit TabelaBrancoForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, Grids, DBGrids, Db, DBTables;

type
  TTabelaBranco = class(TForm)
    RichEdit1: TRichEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabelaBranco: TTabelaBranco;

implementation

{$R *.DFM}

procedure TTabelaBranco.FormCreate(Sender: TObject);
begin
    RichEdit1.Lines.LoadFromFile('C:\Sis Copa 2006\TabelaBranco.rtf');
end;

procedure TTabelaBranco.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

end.
