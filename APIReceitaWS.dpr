program APIReceitaWS;
uses
  System.StartUpCopy,
  FMX.Forms,
  uPRINCIPAL in 'scr\uPRINCIPAL.pas' {frmPrincipal},
  uCNPJ in 'scr\uCNPJ.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
