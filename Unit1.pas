unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Edit5: TEdit;
    StaticText5: TStaticText;
    Button4: TButton;
    Edit6: TEdit;
    StaticText6: TStaticText;
    GroupBox3: TGroupBox;
    StaticText7: TStaticText;
    Edit7: TEdit;
    Button5: TButton;
    StaticText8: TStaticText;
    GroupBox4: TGroupBox;
    StaticText9: TStaticText;
    GroupBox5: TGroupBox;
    StaticText10: TStaticText;
    Button6: TButton;
    Edit8: TEdit;
    StaticText11: TStaticText;
    Button7: TButton;
    Image1: TImage;
    StaticText12: TStaticText;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EnterEdit(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure BackOnClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure First_Output_Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
procedure fff();
procedure load_group4();
type zap = record
  num: integer;
  modl: string[255];
  prod: integer;
  serv: integer;
  end;

var
  Form1: TForm1;
  f: file of zap;
  z: zap;

implementation

{$R *.dfm}

procedure TForm1.BackOnClick(Sender: TObject);
begin
  Image1.Picture := nil;
  Image1.Visible := false;
  Button1.visible := true;
  Button3.Visible := false;
  GroupBox1.Visible := false;
  GroupBox2.Visible := false;
  GroupBox3.Visible := true;
  GroupBox4.Visible := true;
  GroupBox5.Visible := true;
  Button7.Visible := true;
  StaticText12.Visible := false;
  Button8.Visible := false;

  load_group4();
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.visible := false;
  Button3.Visible := true;
  GroupBox1.Visible := true;
  GroupBox2.Visible := true;
  GroupBox3.Visible := false;
  GroupBox4.Visible := false;
  GroupBox5.Visible := false;
  Button7.Visible := false;
  Button8.Visible := true;
end;


procedure TForm1.Button2Click(Sender: TObject);
var number, production, service, k: integer;
  model: string;
begin
  val(Edit1.Text, number, k);
  Edit1.Text := 'Введите данные';
  model := Edit2.Text;
  Edit2.Text := 'Введите данные';
  val(Edit3.Text, production, k);
  Edit3.Text := 'Введите данные';
  val(Edit4.Text, service, k);
  Edit4.Text := 'Введите данные';
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult = 0) then seek(f, filesize(f))
  else rewrite(f);

  z.num := number;
  z.modl := model;
  z.prod := production;
  z.serv := service;
  write(f, z);

  Edit1.SetFocus;

  closefile(f);
end;

procedure TForm1.Button4Click(Sender: TObject);
var number, k: integer;
  ff: file of zap;
begin
  val(Edit5.text, number, k);
  Edit5.Text := 'Введите данные';
  Edit5.SetFocus;
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) then rewrite(f);

  assignfile(ff, 'ffile_zap.dat');
  rewrite(ff);

  while not (eof(f)) do
  begin
    read(f, z);
    if number <> z.num then
    begin
      write(ff, z);
    end;
  end;
  {$I-}
  reset(ff);
  {$I+}
  if ioresult <> 0 then rewrite(ff);

  rewrite(f);
  while not (eof(ff)) do
  begin
    read(ff, z);
    write(f, z);
  end;

  closefile(f);
  closefile(ff);
  erase(ff);
end;

procedure TForm1.Button6Click(Sender: TObject);
var k: integer;
  s, model: string;
begin
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) then rewrite(f);
  model := Edit8.Text;
  Edit8.Text := 'Введите данные';
  StaticText11.Caption := 'Количество: ';
  k := 0;
  while (not (eof(f))) do
  begin
    read(f, z);
    if z.modl = model then
    begin
      k := k + 1;
    end;
  end;
  str(k, s);
  StaticText11.Caption := StaticText11.Caption + s;
  Edit8.SetFocus;
  closefile(f);
end;

procedure TForm1.Button7Click(Sender: TObject);
type p = ^element;
  element = record
    prod: integer;
    next: p;
  end;

var i, j, k, flag, minim_year, maxim_year, minim_count, maxim_count, r_x, len_x, r_y, len_y, x1, x2, y1, y2, curr_count, curr_i, curr_j, size_array_x, size_array_y: integer;
  head, q, q1, prev: p;
  xx1, xx2, yy1, yy2: string;
  a_x, a_y: array [1..10000] of integer;
  bb: TSize;
begin

  Image1.Visible := true;
  Button3.Visible := true;
  GroupBox3.Visible := false;
  GroupBox4.Visible := false;
  GroupBox5.Visible := false;
  Button1.Visible := false;
  Button7.Visible := false;
  StaticText12.Visible := true;

  // width = [20, 890]
  // height = [20, 550]

  // рисуем ось ординат
  Form1.Image1.Canvas.Pen.Width := 3;
  Form1.Image1.Canvas.MoveTo(20, 550);
  Form1.Image1.Canvas.LineTo(20, 20);
  Form1.Image1.Canvas.LineTo(15, 40);
  Form1.Image1.Canvas.MoveTo(20, 20);
  Form1.Image1.Canvas.LineTo(25, 40);

  // рисуем ось абцисс
  Form1.Image1.Canvas.MoveTo(20, 550);
  Form1.Image1.Canvas.LineTo(890, 550);
  Form1.Image1.Canvas.LineTo(870, 545);
  Form1.Image1.Canvas.MoveTo(890, 550);
  Form1.Image1.Canvas.LineTo(870, 555);

  // доступно на оси абцисс [30, 860]
  // доступно на оси ординат [50, 550]
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) or eof(f) then
  begin
    rewrite(f);
    StaticText12.Caption := 'Нет данных';
  end
  else if not(eof(f)) then
  begin
    StaticText12.Caption := '';

    new(head);
    read(f, z);
    head^.prod := z.prod;
    head^.next := nil;
    prev := head;

    maxim_year := z.prod;
    minim_year := z.prod;

    while not(eof(f)) do
    begin
      read(f, z);
      new(q);
      prev^.next := q;
      q^.prod := z.prod;
      q^.next := nil;
      prev := q;
      if z.prod > maxim_year then maxim_year := z.prod;
      if z.prod < minim_year then minim_year := z.prod;
    end;

    // ниже находим количество текущего года производства, также создаем неповторяющиеся массивы годов производства и количеств для абцисс и ординат
    q := head;
    minim_count := 100000;
    maxim_count := 0;
    curr_count := 0;
    size_array_x := 0;
    size_array_y := 0;
    while q <> nil do
    begin
      curr_count := 0;
      q1 := head;
      while q1 <> nil do
      begin
        if q1^.prod = q^.prod then curr_count := curr_count + 1;
        q1 := q1^.next;
      end;
      if curr_count > maxim_count then maxim_count := curr_count;
      if curr_count < minim_count then minim_count := curr_count;

      flag := 0;
      for j := 1 to size_array_x do
      begin
        if (a_x[j] = q^.prod) then
          flag := 1;
      end;
      if flag = 0 then
      begin
        size_array_x := size_array_x + 1;
        a_x[size_array_x] := q^.prod;
      end;

      flag := 0;
      for j := 1 to size_array_y do
      begin
        if (a_y[j] = curr_count) then
          flag := 1;
      end;
      if flag = 0 then
      begin
        size_array_y := size_array_y + 1;
        a_y[size_array_y] := curr_count;
      end;
      q := q^.next;
    end;

    // r_x = количество столбцов - 1 (все было не послед, поэтому не стану менять "-1")
    r_x := size_array_x - 1;
    // len_x = длина одного столбца
    len_x := 830 div (r_x + 1);
    // я вот хотела нумеровать ось ординат с minim_count, но за единичный отрезок я брала 1, и график плохо выглядит
    // я взяла за minim_count = 1
    minim_count := 1;
    r_y := maxim_count - minim_count;
    len_y := 500 div (r_y + 1);
    closefile(f);
    assignfile(f, 'file_zap.dat');
    {$I-}
    reset(f);
    {$I+}
    if (ioresult <> 0) then rewrite(f);

    // сортируем пузырьком неповторяющиеся массивы годов производства и количеств для абцисс и ординат
    for i := 1 to (size_array_x) do
    begin
      for j := 1 to (size_array_x - i) do
        begin
          if (a_x[j] > a_x[j+1]) then
            begin
              a_x[j] := a_x[j] + a_x[j + 1];
              a_x[j + 1] := a_x[j] - a_x[j + 1];
              a_x[j] := a_x[j] - a_x[j + 1];
            end;
        end;
    end;

    for i := 1 to (size_array_y) do
    begin
      for j := 1 to (size_array_y - i) do
        begin
          if (a_y[j] > a_y[j+1]) then
            begin
              a_y[j] := a_y[j] + a_y[j + 1];
              a_y[j + 1] := a_y[j] - a_y[j + 1];
              a_y[j] := a_y[j] - a_y[j + 1];
            end;
        end;
    end;

    // проходим по неповторяющемуся массиву годов производства, чтобы не рисовать прямоугольники на одном месте несколько раз
    for i := 1 to size_array_x do
    begin
      curr_count := 0;
      q := head;
      while q <> nil do
      begin
        if (a_x[i] = q^.prod) then curr_count := curr_count + 1;
        q := q^.next;
      end;
      // находим нумерацию текущего деления curr_j через нумерацию с нуля в промежутке от minim_count до maxim_count
      curr_j := -1;
      for j := minim_count to maxim_count do
      begin
        curr_j := curr_j + 1;
        if j = curr_count then break;
      end;

      curr_i := i - 1;
      x1 := 30 + curr_i * len_x;
      y1 := 550 - len_y - curr_j * len_y;
      x2 := x1 + len_x;
      y2 := 550;

      // str(x1, xx1);
      // str(y1, yy1);
      // str(x2, xx2);
      // str(y2, yy2);
      // StaticText12.Caption := xx1 + ' ' + yy1 + ' ' + xx2 + ' ' + yy2;

      // строчка ниже помогла мне понять, что у строки "2002" высота шрифта 25, а ширина - 44. а у "2" - высота та же, а ширина 11
      // bb := Image1.Canvas.TextExtent('2002');

      str(a_x[i], xx1);
      str(curr_count, xx2);
      Form1.Image1.Canvas.Brush.Color := clRed;
      Form1.Image1.Canvas.Rectangle(x1, y1, x2, y2);
      Form1.Image1.Canvas.TextOut(x1 + 3, 550 - 28, xx1);
      Form1.Image1.Canvas.Brush.Color := clCream;
      Form1.Image1.Canvas.TextOut(x1 + ((len_x div 2) - (Image1.Canvas.TextWidth(xx2) div 2)), y1 - 28, xx2);
    end;
  end;
  closefile(f);
end;

procedure TForm1.First_Output_Click(Sender: TObject);
var year, k: integer;
begin
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) then rewrite(f);
  Form1.StaticText8.Caption := '';
  val(Form1.Edit7.Text, year, k);
  Form1.Edit7.Text := 'Введите год';
  while (not (eof(f))) do
  begin
    read(f, z);
    if z.prod >= year then
    begin
      if (Form1.StaticText8.Caption = '') then Form1.StaticText8.Caption := z.modl
      else Form1.StaticText8.Caption := Form1.StaticText8.Caption + ', ' + z.modl;
    end;
  end;
  if (Form1.StaticText8.Caption = '') then Form1.StaticText8.Caption := 'Нет данных';
  Edit7.SetFocus;
  closefile(f);
end;

procedure TForm1.EditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then StaticText6.SetFocus;
end;

procedure TForm1.EnterEdit(Sender: TObject);
begin
  if ((Sender as TEdit).Text = 'Введите данные') or ((Sender as Tedit).Text = 'Введите год') then
    (Sender as TEdit).SelectAll;
end;


procedure TForm1.FormClick(Sender: TObject);
begin
  Form1.StaticText6.SetFocus;
  // откомментировать строку fff();, если понадобится корявый вывод БД
  // fff();
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var ff: file of zap;
  DlgRes:integer;
begin
//  assignfile(f, 'file_zap.dat');
//  rewrite(f);
//  closefile(f);
//  erase(f);
//
//  assignfile(ff, 'ffile_zap.dat');
//  rewrite(ff);
//  closefile(ff);
//  erase(ff);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) then rewrite(f);
  closefile(f);
end;


procedure fff();
var s1, s3, s4: string[255];
begin
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) then rewrite(f);

  Form1.Edit6.text := '';

  while not (eof(f)) do
  begin
    read(f, z);
    str(z.num, s1);
    str(z.prod,s3);
    str(z.serv, s4);
    Form1.Edit6.Text := Form1.Edit6.Text + s1 + ' ' + z.modl + ' ' + s3 + ' ' + s4 + '   ';
  end;

  closefile(f);
end;

procedure load_group4();
var s: string;
begin
  assignfile(f, 'file_zap.dat');
  {$I-}
  reset(f);
  {$I+}
  if (ioresult <> 0) then rewrite(f);
  Form1.StaticText9.Caption := '';
  while not (eof(f)) do
  begin
    read(f, z);
    if ((2022 - (z.prod + z.serv)) > 0) then
      begin
        str(z.num, s);
        if (Form1.StaticText9.Caption = '') then Form1.StaticText9.Caption := s + '-' + z.modl
        else Form1.StaticText9.Caption := Form1.StaticText9.Caption + ', ' + s + '-' + z.modl;
      end;
  end;
  if Form1.StaticText9.Caption = '' then Form1.StaticText9.Caption := 'В БД пока не нашлось информации';
  closefile(f);
end;
procedure TForm1.Button8Click(Sender: TObject);
begin
  assignfile(f, 'file_zap.dat');
  rewrite(f);
  closefile(f);
end;

end.
