object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
  ClientHeight = 491
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image_Form: TImage
    Left = 0
    Top = 0
    Width = 505
    Height = 489
    OnMouseDown = ImageMouseDown
    OnMouseUp = ImageMouseUp
  end
  object Bevel_Settings: TBevel
    Left = 511
    Top = 8
    Width = 153
    Height = 475
    Shape = bsFrame
    Style = bsRaised
  end
  object Button_Exit: TButton
    Left = 536
    Top = 440
    Width = 103
    Height = 34
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 0
    OnClick = ButtonExitClick
  end
  object SpinEdit_Radius: TSpinEdit
    Left = 599
    Top = 95
    Width = 57
    Height = 22
    MaxValue = 500
    MinValue = 5
    TabOrder = 1
    Value = 5
  end
  object RadioButton_StandartLine: TRadioButton
    Left = 526
    Top = 32
    Width = 130
    Height = 17
    Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103' '#1083#1080#1085#1080#1103
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object RadioButton_LineWithCircle: TRadioButton
    Left = 526
    Top = 55
    Width = 134
    Height = 17
    Caption = #1051#1080#1085#1080#1103' '#1089' '#1086#1082#1088#1091#1078#1085#1086#1089#1090#1100#1102
    TabOrder = 3
  end
  object StaticText_RadiusCircle: TStaticText
    Left = 528
    Top = 98
    Width = 65
    Height = 17
    Caption = #1056#1072#1076#1080#1091#1089' '#1086#1082#1088'.'
    TabOrder = 4
  end
  object StaticText_Logs: TStaticText
    Left = 552
    Top = 184
    Width = 4
    Height = 4
    TabOrder = 5
  end
  object StaticText: TStaticText
    Left = 520
    Top = 12
    Width = 60
    Height = 17
    Caption = #1042#1080#1076' '#1083#1080#1085#1080#1080':'
    TabOrder = 6
  end
end
