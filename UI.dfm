object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
  ClientHeight = 456
  ClientWidth = 814
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
  object Image_Main: TImage
    Left = 0
    Top = 0
    Width = 817
    Height = 457
  end
  object Timer_Main: TTimer
    Enabled = False
    Interval = 5
    OnTimer = Timer_MainTimer
    Left = 136
    Top = 120
  end
end
