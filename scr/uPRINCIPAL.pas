unit uPRINCIPAL;
interface
uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, uCNPJ;
type
  TfrmPrincipal = class(TForm)
    edtCNPJ: TEdit;
    spPESQUISA: TSpeedButton;
    edtRAZAO: TEdit;
    edtLOGRADOURO: TEdit;
    edtNUMERO: TEdit;
    edtCEP: TEdit;
    edtBAIRRO: TEdit;
    edtCIDADE: TEdit;
    edtUF: TEdit;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout4: TLayout;
    Layout3: TLayout;
    Layout5: TLayout;
    procedure spPESQUISAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmPrincipal: TfrmPrincipal;
implementation
{$R *.fmx}

procedure TfrmPrincipal.spPESQUISAClick(Sender: TObject);
var
  lCNPJ: TCNPJ;
  lCNPJRecord: TCNPJRecord;
begin
  lCNPJ := TCNPJ.Create;
  try
    try
      lCNPJRecord := lCNPJ.ConsultarCNPJ(edtCNPJ.Text);

      edtRAZAO.Text := lCNPJRecord.RazaoSocial;
      edtLOGRADOURO.Text := lCNPJRecord.Rua;
      edtNUMERO.Text := lCNPJRecord.Numero;
      edtCEP.Text := lCNPJRecord.CEP;
      edtBAIRRO.Text := lCNPJRecord.Bairro;
      edtCIDADE.Text := lCNPJRecord.Cidade;
      edtUF.Text := lCNPJRecord.UF;
    except
      ShowMessage('Ops, algo deu errado. Tente novamente mais tarde.');
    end;
  finally
    lCNPJ.Free;
  end;
end;

end.
