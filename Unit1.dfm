object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
  ClientHeight = 300
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClick = FormClick
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 457
    Height = 284
    Visible = False
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 137
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 208
    Top = 8
    Width = 257
    Height = 169
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077', '#1095#1090#1086#1073#1099' '#1076#1086#1087#1086#1083#1085#1080#1090#1100' '#1041#1044':'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    Visible = False
    OnClick = FormClick
    object Edit1: TEdit
      Left = 120
      Top = 22
      Width = 126
      Height = 21
      TabOrder = 0
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object Edit2: TEdit
      Left = 120
      Top = 49
      Width = 126
      Height = 21
      TabOrder = 1
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object Edit3: TEdit
      Left = 120
      Top = 78
      Width = 128
      Height = 21
      TabOrder = 2
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object Edit4: TEdit
      Left = 120
      Top = 105
      Width = 126
      Height = 21
      TabOrder = 3
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object StaticText1: TStaticText
      Left = 11
      Top = 24
      Width = 77
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1074#1072#1075#1086#1085#1072':'
      TabOrder = 4
    end
    object StaticText2: TStaticText
      Left = 11
      Top = 51
      Width = 47
      Height = 17
      Caption = #1052#1086#1076#1077#1083#1100':'
      TabOrder = 5
    end
    object StaticText3: TStaticText
      Left = 11
      Top = 80
      Width = 101
      Height = 17
      Caption = #1043#1086#1076' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072':'
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 11
      Top = 107
      Width = 75
      Height = 17
      Caption = #1057#1088#1086#1082' '#1089#1083#1091#1078#1073#1099':'
      TabOrder = 7
    end
    object Button2: TButton
      Left = 160
      Top = 132
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object Button3: TButton
    Left = 24
    Top = 8
    Width = 33
    Height = 25
    Caption = '<'
    TabOrder = 2
    Visible = False
    OnClick = BackOnClick
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 192
    Width = 210
    Height = 89
    Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093':'
    TabOrder = 3
    Visible = False
    object Edit5: TEdit
      Left = 86
      Top = 24
      Width = 117
      Height = 21
      TabOrder = 0
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object StaticText5: TStaticText
      Left = 3
      Top = 26
      Width = 77
      Height = 17
      Caption = #1053#1086#1084#1077#1088' '#1074#1072#1075#1086#1085#1072':'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 120
      Top = 51
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object Edit6: TEdit
    Left = 8
    Top = 110
    Width = 169
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object StaticText6: TStaticText
    Left = 8
    Top = 63
    Width = 4
    Height = 4
    TabOrder = 5
  end
  object GroupBox3: TGroupBox
    Left = 191
    Top = 192
    Width = 274
    Height = 106
    Caption = #1057#1087#1080#1089#1086#1082' '#1084#1086#1076#1077#1083#1077#1081' '#1090#1088#1072#1084#1074#1072#1077#1074','
    TabOrder = 6
    object StaticText7: TStaticText
      Left = 8
      Top = 23
      Width = 141
      Height = 17
      Caption = #1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1085#1099#1093', '#1085#1072#1095#1080#1085#1072#1103' '#1089
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 152
      Top = 21
      Width = 89
      Height = 21
      TabOrder = 1
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1076
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object Button5: TButton
      Left = 136
      Top = 48
      Width = 117
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
      TabOrder = 2
      OnClick = First_Output_Click
    end
    object StaticText8: TStaticText
      Left = 15
      Top = 71
      Width = 4
      Height = 4
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 191
    Top = 8
    Width = 274
    Height = 49
    Caption = #1053#1086#1084#1077#1088'-'#1084#1086#1076#1077#1083#1100', '#1089#1088#1086#1082' '#1089#1083#1091#1078#1073#1099' '#1082#1086#1090#1086#1088#1099#1093' '#1080#1089#1090#1077#1082':'
    TabOrder = 7
    object StaticText9: TStaticText
      Left = 10
      Top = 22
      Width = 180
      Height = 17
      Caption = #1042' '#1041#1044' '#1087#1086#1082#1072' '#1085#1077' '#1085#1072#1096#1083#1086#1089#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 191
    Top = 63
    Width = 274
    Height = 114
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1084#1086#1076#1077#1083#1077#1081' '#1079#1072#1076#1072#1085#1085#1086#1081' '#1084#1086#1076#1077#1083#1080':'
    TabOrder = 8
    object StaticText10: TStaticText
      Left = 15
      Top = 26
      Width = 85
      Height = 17
      Caption = #1052#1086#1076#1077#1083#1100' '#1074#1072#1075#1086#1085#1072':'
      TabOrder = 0
    end
    object Button6: TButton
      Left = 162
      Top = 52
      Width = 83
      Height = 25
      Caption = #1054#1087#1088#1077#1076#1077#1083#1080#1090#1100
      TabOrder = 1
      OnClick = Button6Click
    end
    object Edit8: TEdit
      Left = 117
      Top = 23
      Width = 113
      Height = 21
      TabOrder = 2
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      OnClick = EnterEdit
      OnKeyPress = EditKeyPress
    end
    object StaticText11: TStaticText
      Left = 15
      Top = 75
      Width = 71
      Height = 17
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086': '
      TabOrder = 3
    end
  end
  object Button7: TButton
    Left = 16
    Top = 63
    Width = 137
    Height = 41
    Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1075#1088#1072#1092#1080#1082#1091
    TabOrder = 9
    OnClick = Button7Click
  end
  object StaticText12: TStaticText
    Left = 199
    Top = 100
    Width = 4
    Height = 4
    TabOrder = 10
    Visible = False
  end
  object Button8: TButton
    Left = 353
    Top = 252
    Width = 112
    Height = 29
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1041#1044
    TabOrder = 11
    Visible = False
    OnClick = Button8Click
  end
end
