program ДЗ1_часть2_Набережная_ИУ6_24Б;

uses
  Vcl.Forms,
  UI in 'UI.pas' {Form_Main},
  Figure in 'Figure.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main, Form_Main);
  Application.Run;
end.
