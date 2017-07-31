object UsersForm: TUsersForm
  Left = 466
  Top = 261
  Width = 500
  Height = 200
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1059#1095#1077#1090' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  Color = clBtnFace
  Constraints.MinHeight = 130
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 484
    Height = 132
    Align = alClient
    DataSource = DataModule1.UsersDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Key1'
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1051#1086#1075#1080#1085
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1072#1088#1086#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1086#1089#1090#1091#1087
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 484
    Height = 29
    ButtonHeight = 23
    Caption = 'ToolBar1'
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 2
      Width = 45
      Height = 23
      Caption = #1051#1086#1075#1080#1085'  '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LoginEdit: TEdit
      Left = 45
      Top = 2
      Width = 107
      Height = 23
      TabOrder = 0
      OnKeyPress = LoginEditKeyPress
    end
    object ToolButton1: TToolButton
      Left = 152
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object DBNavigator1: TDBNavigator
      Left = 160
      Top = 2
      Width = 240
      Height = 23
      DataSource = DataModule1.UsersDataSource
      TabOrder = 1
    end
  end
end
