unit DrawLine;

interface uses UI, Graphics;
  Type TDrawLine = class
    x_start, y_start, x_end, y_end: integer;
    constructor Create(x, y: integer); overload;
    constructor Create(x1, y1, x2, y2: integer); overload;
    procedure ToDrawLine(x, y: integer);
  end;
  Type TDrawLineWithCircle = class(TDrawLine)
    x_left_top, y_left_top, radius: integer;
    constructor Create(x1, y1, x2, y2, r: Integer);
    procedure ToDrawCircle;
  end;
implementation

constructor TDrawLine.Create(x: Integer; y: Integer);
begin
  inherited Create;
  x_start := x;
  y_start := y;
end;

constructor TDrawLine.Create(x1, y1, x2, y2: Integer);
begin
  inherited Create;
  x_start := x1;
  y_start := y1;
  x_end := x2;
  y_end := y2;
end;

procedure TDrawLine.ToDrawLine(x, y: integer);
begin
  x_end := x;
  y_end := y;
  UI.Form_Main.Image_Form.Canvas.MoveTo(x_start, y_start);
  UI.Form_Main.Image_Form.Canvas.LineTo(x_end, y_end);
end;


constructor TDrawLineWithCircle.Create(x1, y1, x2, y2, r: Integer);
begin
  inherited Create(x1, y1, x2, y2);
  // по какой-то причине формуля не работает, если линия - это точка, поэтому создаю доп ветвление:
  if (x1 = x2) and (y1 = y2) then
  begin
    x_left_top := x1 - r;
    y_left_top := y1 - r;
  end else
  begin
    // получаем координату центра окружности: из вектора по линии получаем орт делением на длину и умножаем на радиус, и откладываем от x2
    // затем из координаты центра получаем координату верхнего левого прямоугольника, описанного около окр
    x_left_top := round((x2 + (((x2 - x1) / exp((ln((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)) / 2))) * r)) - r);
    y_left_top := round((y2 + (((y2 - y1) / exp((ln((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)) / 2))) * r)) - r);
  end;
  radius := r;
end;

procedure TDrawLineWithCircle.ToDrawCircle;
begin
  inherited ToDrawLine(x_end, y_end);
  UI.Form_Main.Image_Form.Canvas.Ellipse(x_left_top, y_left_top, x_left_top + 2 * radius, y_left_top + 2 * radius);
end;

end.
