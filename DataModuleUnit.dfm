object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 547
  Top = 455
  Height = 259
  Width = 592
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=DataB' +
      'ase.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLE' +
      'DB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Datab' +
      'ase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locki' +
      'ng Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global B' +
      'ulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:' +
      'Create System Database=False;Jet OLEDB:Encrypt Database=False;Je' +
      't OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wit' +
      'hout Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 48
  end
  object StudentTable: TADOTable
    Connection = UserForm.ADOConnection1
    CursorType = ctStatic
    AfterOpen = StudentTableAfterOpen
    TableName = #1046#1080#1083#1100#1094#1099
    Left = 136
    Top = 16
    object atncfldStudentTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object wdstrngfldStudentTableDSDesigner: TWideStringField
      FieldName = #1051'/'#1089#1095#1077#1090
      Size = 50
    end
    object wdstrngfldStudentTableDSDesigner2: TWideStringField
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 50
    end
    object wdstrngfldStudentTableDSDesigner3: TWideStringField
      FieldName = #1048#1084#1103
      Size = 50
    end
    object wdstrngfldStudentTableDSDesigner4: TWideStringField
      FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
      Size = 50
    end
    object wdstrngfldStudentTableDSDesigner5: TWideStringField
      FieldName = #1040#1076#1088#1077#1089
      Size = 50
    end
    object wdstrngfldStudentTableDSDesigner6: TWideStringField
      FieldName = #1050#1074#1072#1088#1090#1080#1088#1072
      Size = 50
    end
    object wdstrngfldStudentTableDSDesigner7: TWideStringField
      FieldName = #1069#1090#1072#1078
      Size = 5
    end
    object wdstrngfldStudentTableDSDesigner8: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
    end
  end
  object StudentDataSource: TDataSource
    AutoEdit = False
    DataSet = StudentTable
    Left = 136
    Top = 72
  end
  object tarifDataSource: TDataSource
    DataSet = tarif
    Left = 248
    Top = 72
  end
  object tarif: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterOpen = tarifAfterOpen
    TableName = #1058#1072#1088#1080#1092#1099
    Left = 248
    Top = 16
    object atncfldPrepodTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object intgrfldPrepodTableDSDesigner: TIntegerField
      FieldName = #1048#1085#1076#1077#1082#1089' '#1091#1089#1083#1091#1075#1080
    end
    object wdstrngfldPrepodTableDSDesigner2: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 50
    end
    object intgrfldPrepodTableDSDesigner3: TIntegerField
      FieldName = #1058#1072#1088#1080#1092
    end
    object intgrfldPrepodTableDSDesigner4: TIntegerField
      FieldName = #1058#1080#1087' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
    end
    object wdstrngfldPrepodTableDSDesigner5: TWideStringField
      FieldName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Size = 50
    end
  end
  object UsersDataSource: TDataSource
    DataSet = UsersTable
    Left = 352
    Top = 72
  end
  object PersonalTable: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterOpen = PersonalTableAfterOpen
    TableName = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1087#1077#1088#1089#1086#1085#1072#1083
    Left = 472
    Top = 16
    object PersonalTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object PersonalTableDSDesigner: TWideStringField
      DisplayWidth = 20
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 50
    end
    object PersonalTableDSDesigner2: TWideStringField
      DisplayWidth = 23
      FieldName = #1048#1084#1103
      Size = 50
    end
    object PersonalTableDSDesigner3: TWideStringField
      DisplayWidth = 20
      FieldName = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Size = 50
    end
    object PersonalTableDSDesigner4: TWideStringField
      DisplayWidth = 25
      FieldName = #1040#1076#1088#1077#1089
      Size = 50
    end
    object PersonalTableDSDesigner5: TWideStringField
      DisplayWidth = 15
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 50
    end
  end
  object PersonalDataSource: TDataSource
    DataSet = PersonalTable
    Left = 472
    Top = 72
  end
  object UsersTable: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
    Left = 352
    Top = 16
    object UsersTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object UsersTableDSDesigner: TWideStringField
      DisplayWidth = 30
      FieldName = #1051#1086#1075#1080#1085
      Size = 50
    end
    object UsersTableDSDesigner2: TWideStringField
      DisplayWidth = 30
      FieldName = #1055#1072#1088#1086#1083#1100
      Size = 50
    end
    object UsersTableDSDesigner3: TBooleanField
      FieldName = #1044#1086#1089#1090#1091#1087
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
  end
end
