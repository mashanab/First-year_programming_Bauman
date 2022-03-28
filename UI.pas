unit UI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin;

type
  TForm_Main = class(TForm)
    Image_Form: TImage;
    Bevel_Settings: TBevel;
    Button_Exit: TButton;
    SpinEdit_Radius: TSpinEdit;
    RadioButton_StandartLine: TRadioButton;
    RadioButton_LineWithCircle: TRadioButton;
    StaticText_RadiusCircle: TStaticText;
    StaticText_Logs: TStaticText;
    StaticText: TStaticText;
    procedure ImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
    procedure ImageMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;

implementation

uses DrawLine;

{$R *.dfm}

var
  L: TDrawLine;
  C: TDrawLineWithCircle;

procedure TForm_Main.ButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_Main.FormActivate(Sender: TObject);
begin
  Form_Main.Image_Form.Canvas.Pen.Color := clBlack;
  Form_Main.Image_Form.Canvas.Pen.Width := 4;
end;

procedure TForm_Main.ImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    L := TDrawLine.Create(X, Y);
  end;
end;


procedure TForm_Main.ImageMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (RadioButton_StandartLine.Checked) then
  begin
    L.ToDrawLine(X, Y);
    L.Free;
  end
  else
  begin
    C := TDrawLineWithCircle.Create(L.x_start, L.y_start, X, Y, SpinEdit_Radius.Value);
    C.ToDrawCircle;
    C.Free;
  end;
end;

end.
