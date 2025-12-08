unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzCommon, Vcl.ExtCtrls, RzPanel,
  RzBorder, Vcl.ColorGrd, Vcl.StdCtrls, Vcl.ActnColorMaps, Vcl.ActnMan,
  RzButton, Vcl.Mask, RzEdit, RzLabel;

type
  TForm3 = class(TForm)
    ColorList: TColorListBox;
    RzLabel1: TRzLabel;
    EdtRGB: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    RzLabel2: TRzLabel;
    EdtHEX: TRzEdit;
    RzLabel3: TRzLabel;
    EdtDelphi: TRzEdit;
    PaintBox1: TPaintBox;
    procedure ColorListClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    FColorSeleccionado: TColor;
    procedure GetRGBFromColor(AColor: TColor; out R, G, B: Byte);
    function ColorToHex(AColor: TColor): string;
    function ColorToDelphiFormat(AColor: TColor): string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ColorListClick(Sender: TObject);
var
  R, G, B: Byte;
begin
  if ColorList.ItemIndex >= 0 then
  begin
    FColorSeleccionado := ColorList.Selected;  // Guardar color
    GetRGBFromColor(FColorSeleccionado, R, G, B);
    EdtRGB.Text := Format('rgb(%d,%d,%d)', [R, G, B]);
    EdtHEX.Text := ColorToHex(FColorSeleccionado);
    EdtDelphi.Text := ColorToDelphiFormat(FColorSeleccionado);
    PaintBox1.Invalidate;  // Forzar repintado
  end;
end;

procedure TForm3.GetRGBFromColor(AColor: TColor; out R, G, B: Byte);
var
  ColorRef: TColorRef;
begin
  ColorRef := ColorToRGB(AColor);  // Esta es la función de Vcl.Graphics
  R := GetRValue(ColorRef);
  G := GetGValue(ColorRef);
  B := GetBValue(ColorRef);
end;

function TForm3.ColorToHex(AColor: TColor): string;
var
  R, G, B: Byte;
  ColorRef: TColorRef;
begin
  ColorRef := ColorToRGB(AColor);
  R := GetRValue(ColorRef);
  G := GetGValue(ColorRef);
  B := GetBValue(ColorRef);
  Result := Format('#%.2X%.2X%.2X', [R, G, B]);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  FColorSeleccionado := clWhite;
end;

function TForm3.ColorToDelphiFormat(AColor: TColor): string;
begin
  Result := Format('$%.8X', [ColorToRGB(AColor)]);
end;

procedure TForm3.PaintBox1Paint(Sender: TObject);
begin
  PaintBox1.Canvas.Brush.Color := FColorSeleccionado;
  PaintBox1.Canvas.FillRect(PaintBox1.ClientRect);
end;

procedure TForm3.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
