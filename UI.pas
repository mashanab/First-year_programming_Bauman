unit UI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Figure;

type
  TForm_Main = class(TForm)
    Image_Main: TImage;
    Timer_Main: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer_MainTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;
  C: TCircle;
  H: THexagon;
  A: TAstroid;
  t: single;

implementation

{$R *.dfm}

procedure TForm_Main.FormActivate(Sender: TObject);
var x_center_circle, y_center_circle, radius_circle: integer;
  x_center_hexagon, y_center_hexagon, radius_hexagon: integer;
  x_center_astroid, y_center_astroid, radius_astroid: integer;
begin
  Image_Main.Canvas.Pen.Width := 5;
  Image_Main.Canvas.Brush.Style := bsClear;
  Timer_Main.Enabled := True;
  t := 0.0;

  radius_circle := 150;
  x_center_circle := 350;
  y_center_circle := 200;
  C := TCircle.Create(x_center_circle, y_center_circle, radius_circle);

  radius_hexagon := 150;
  x_center_hexagon := 800;
  y_center_hexagon := 600;
  H := THexagon.Create(x_center_hexagon, y_center_hexagon, radius_hexagon);

  radius_astroid := 150;
  x_center_astroid := 1250;
  y_center_astroid := 200;
  A := TAstroid.Create(x_center_astroid, y_center_astroid, radius_astroid);
end;

procedure TForm_Main.Timer_MainTimer(Sender: TObject);
begin
  C.Move(0.08 * t);
  H.Move(0.2 * t);
  A.Move(0.1 * t);
  t := t + 0.5;
end;

end.
