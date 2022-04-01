unit Figure;

interface
type TFigure = class
  x_center, y_center, znak, dx, radius: integer;
  constructor Create(x, y, r: integer);
  procedure Draw; virtual; abstract;
  procedure Move(t: single);
  procedure Rel(t: single);
end;

type TCircle = class(TFigure)
  constructor Create(x, y, r: integer);
  procedure Draw; override;
end;

type THexagon = class(TFigure)
  constructor Create(x, y, r: integer);
  procedure Draw; override;
end;

type TAstroid = class (TFigure)
  constructor Create(x, y, r: integer);
  procedure Draw; override;
end;

implementation uses UI, Graphics;

constructor TFigure.Create(x: Integer; y: Integer; r: Integer);
begin
  inherited Create;
  x_center := x;
  y_center := y;
  radius := r;
  znak := 1;
  dx := 0;
end;

procedure TFigure.Move(t: single);
begin
  UI.Form_Main.Image_Main.Canvas.Pen.Color := clWhite;
  Draw;
  Rel(t);
  UI.Form_Main.Image_Main.Canvas.Pen.Color := clBlack;
  Draw;
end;

procedure TFigure.Rel(t: single);
begin
  dx := round(150 * cos(t));
end;

constructor TCircle.Create(x: Integer; y: Integer; r: Integer);
begin
  inherited Create(x, y, r);
end;

procedure TCircle.Draw;
begin
  UI.Form_Main.Image_Main.Canvas.Ellipse(x_center - dx - radius,
  y_center - radius, x_center - dx + radius, y_center + radius);
end;

constructor THexagon.Create(x: Integer; y: Integer; r: Integer);
begin
  inherited Create(x, y, r);
end;

procedure THexagon.Draw;
var i, x0, y0: integer;
begin
  UI.Form_Main.Image_Main.Canvas.MoveTo(x_center - dx, y_center + radius);
  for i := 1 to 6 do
  begin
    x0 := round(radius * cos(2 * pi * i / 6 + pi / 2));
    y0 := round(radius * sin(2 * pi * i / 6 + pi / 2));
    UI.Form_Main.Image_Main.Canvas.LineTo(x_center + x0 - dx, y_center + y0);
  end;
end;

constructor TAstroid.Create(x: Integer; y: Integer; r: Integer);
begin
  inherited Create(x, y, r);
end;

procedure TAstroid.Draw;
var t: single;
  x0, y0: integer;
begin
  t := 0.0;
  while (t <= (2 * pi)) do
  begin
    x0 := round(radius * (cos(t) * cos(t) * cos(t)));
    y0 := round(radius * (sin(t) * sin(t) * sin(t)));
    UI.Form_Main.Image_Main.Canvas.Ellipse(x_center + (x0 - dx - 1), y_center + (y0 - 1), x_center + (x0 - dx + 1), y_center + (y0 + 1));
    t := t + 0.01;
  end;
end;

end.
