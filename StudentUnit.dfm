object StudentForm: TStudentForm
  Left = 474
  Top = 244
  Width = 470
  Height = 304
  HelpContext = 1
  Caption = #1040#1056#1052' - '#1046#1080#1083#1100#1094#1099
  Color = clBtnFace
  Constraints.MinHeight = 250
  Constraints.MinWidth = 450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'help.hlp'
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 462
    Height = 229
    Align = alClient
    DataSource = DataModule1.StudentDataSource
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
        FieldName = #1051'/'#1089#1095#1077#1090
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1072#1084#1080#1083#1080#1103
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1084#1103
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1040#1076#1088#1077#1089
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1074#1072#1088#1090#1080#1088#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1069#1090#1072#1078
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 462
    Height = 29
    ButtonHeight = 23
    Caption = 'ToolBar1'
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 2
      Width = 65
      Height = 23
      Caption = #1060#1072#1084#1080#1083#1080#1103'  '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FilterFamEdit: TEdit
      Left = 65
      Top = 2
      Width = 107
      Height = 23
      TabOrder = 0
      OnChange = FilterFamEditChange
    end
    object ToolButton1: TToolButton
      Left = 172
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object StudentNavigator: TDBNavigator
      Left = 180
      Top = 2
      Width = 240
      Height = 23
      DataSource = DataModule1.StudentDataSource
      Align = alCustom
      TabOrder = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 296
    Top = 160
    object FileItem: TMenuItem
      Caption = #1060#1072#1081#1083
      object ExelItem: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1074' Excel'
        OnClick = ExelItemClick
      end
      object TableInfoItem: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1090#1072#1073#1083#1080#1094#1077
        OnClick = TableInfoItemClick
      end
      object N2: TMenuItem
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object ExitItem: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = ExitItemClick
      end
    end
    object CategoryItem: TMenuItem
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      object CategoryPrepod: TMenuItem
        Caption = #1058#1072#1088#1080#1092#1099
        OnClick = CategoryPrepodClick
      end
      object N1: TMenuItem
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1087#1077#1088#1089#1086#1085#1072#1083
        OnClick = N1Click
      end
    end
    object SortItem: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object ByFamItem: TMenuItem
        Caption = #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
        OnClick = ByFamItemClick
      end
      object ByClassItem: TMenuItem
        Caption = #1055#1086' '#1083'/'#1089#1095#1077#1090#1091
        OnClick = ByClassItemClick
      end
    end
    object HelpItem: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object ProgrammInfo: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = ProgrammInfoClick
      end
    end
  end
end
