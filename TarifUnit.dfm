object TarifForm: TTarifForm
  Left = 363
  Top = 206
  Width = 640
  Height = 480
  Caption = #1040#1056#1052' - '#1058#1072#1088#1080#1092#1099
  Color = clBtnFace
  Constraints.MinHeight = 250
  Constraints.MinWidth = 450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 624
    Height = 392
    Align = alClient
    DataSource = DataModule1.tarifDataSource
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
        FieldName = #1048#1085#1076#1077#1082#1089' '#1091#1089#1083#1091#1075#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1072#1088#1080#1092
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1080#1087' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 624
    Height = 29
    ButtonHeight = 23
    Caption = 'ToolBar1'
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 2
      Width = 46
      Height = 23
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object FilterFamEdit: TEdit
      Left = 46
      Top = 2
      Width = 107
      Height = 23
      TabOrder = 0
      OnChange = FilterFamEditChange
    end
    object PrepodNavigator: TDBNavigator
      Left = 153
      Top = 2
      Width = 240
      Height = 23
      DataSource = DataModule1.tarifDataSource
      Align = alCustom
      TabOrder = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 344
    Top = 168
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object ExelItem: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1074' Excel'
        OnClick = ExelItemClick
      end
      object N7: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1090#1072#1073#1083#1080#1094#1077
        OnClick = N7Click
      end
      object N9: TMenuItem
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      object N4: TMenuItem
        Caption = #1046#1080#1083#1100#1094#1099
        OnClick = N4Click
      end
      object N8: TMenuItem
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1087#1077#1088#1089#1086#1085#1072#1083
        OnClick = N8Click
      end
    end
    object Sort: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object N5: TMenuItem
        Caption = #1055#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
        OnClick = N5Click
      end
      object N11: TMenuItem
        Caption = #1055#1086' '#1080#1085#1076#1077#1082#1089#1091' '#1091#1089#1083#1091#1075#1080
        Visible = False
        OnClick = N11Click
      end
    end
    object Cghfdrf1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
  end
end
