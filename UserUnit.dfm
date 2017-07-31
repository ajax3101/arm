object UserForm: TUserForm
  Left = 482
  Top = 280
  Width = 300
  Height = 130
  BorderIcons = []
  Caption = #1042#1093#1086#1076' '#1074' '#1041#1072#1079#1091' '#1044#1072#1085#1085#1099#1093
  Color = clBtnFace
  Constraints.MaxHeight = 130
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 130
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 11
    Width = 34
    Height = 13
    Caption = #1051#1086#1075#1080#1085':'
  end
  object Label2: TLabel
    Left = 7
    Top = 32
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object Button1: TButton
    Left = 59
    Top = 59
    Width = 78
    Height = 20
    Caption = #1042#1093#1086#1076
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 59
    Width = 72
    Height = 20
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object LoginEdit: TEdit
    Left = 59
    Top = 7
    Width = 189
    Height = 21
    TabOrder = 0
  end
  object PasswordEdit: TEdit
    Left = 59
    Top = 33
    Width = 189
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnClick = PasswordEditClick
  end
  object Button3: TButton
    Left = 7
    Top = 59
    Width = 20
    Height = 20
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object UserQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'log'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select*'
      'From '#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      'Where '#1051#1086#1075#1080#1085' Like:Log')
    Left = 48
    Top = 50
  end
  object ADOConnection1: TADOConnection
    Connected = True
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
    Left = 16
    Top = 50
  end
end
