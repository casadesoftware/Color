object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecci'#243'n de colores'
  ClientHeight = 244
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object RzLabel1: TRzLabel
    Left = 240
    Top = 16
    Width = 22
    Height = 15
    Caption = 'RGB'
  end
  object RzLabel2: TRzLabel
    Left = 240
    Top = 72
    Width = 22
    Height = 15
    Caption = 'HEX'
  end
  object RzLabel3: TRzLabel
    Left = 240
    Top = 128
    Width = 34
    Height = 15
    Caption = 'Delphi'
  end
  object PaintBox1: TPaintBox
    Left = 384
    Top = 37
    Width = 129
    Height = 135
    OnPaint = PaintBox1Paint
  end
  object ColorList: TColorListBox
    Left = 0
    Top = 0
    Width = 217
    Height = 244
    Align = alLeft
    TabOrder = 0
    OnClick = ColorListClick
  end
  object EdtRGB: TRzEdit
    Left = 240
    Top = 37
    Width = 121
    Height = 23
    Text = ''
    TabOrder = 1
  end
  object RzBitBtn1: TRzBitBtn
    Left = 240
    Top = 200
    Width = 273
    Height = 36
    Caption = 'Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = RzBitBtn1Click
  end
  object EdtHEX: TRzEdit
    Left = 240
    Top = 93
    Width = 121
    Height = 23
    Text = ''
    TabOrder = 3
  end
  object EdtDelphi: TRzEdit
    Left = 240
    Top = 149
    Width = 121
    Height = 23
    Text = ''
    TabOrder = 4
  end
end
