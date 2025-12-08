program Color;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
