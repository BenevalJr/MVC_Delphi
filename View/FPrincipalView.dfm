object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo MVC'
  ClientHeight = 246
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 202
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 227
    Width = 494
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitLeft = 256
    ExplicitTop = 136
    ExplicitWidth = 0
  end
end
