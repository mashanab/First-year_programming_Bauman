program HW1_Nab;

uses
  Vcl.Forms,
  UI in 'UI.pas' {Form_Main},
  DrawLine in 'DrawLine.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main, Form_Main);
  Application.Run;
end.
