unit DataModuleUnit;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    StudentTable: TADOTable;
    StudentDataSource: TDataSource;
    tarifDataSource: TDataSource;
    tarif: TADOTable;
    UsersDataSource: TDataSource;
    PersonalTable: TADOTable;
    PersonalDataSource: TDataSource;
    PersonalTableKey1: TAutoIncField;
    PersonalTableDSDesigner: TWideStringField;
    PersonalTableDSDesigner2: TWideStringField;
    PersonalTableDSDesigner3: TWideStringField;
    PersonalTableDSDesigner4: TWideStringField;
    PersonalTableDSDesigner5: TWideStringField;
    UsersTable: TADOTable;
    UsersTableKey1: TAutoIncField;
    UsersTableDSDesigner: TWideStringField;
    UsersTableDSDesigner2: TWideStringField;
    UsersTableDSDesigner3: TBooleanField;
    atncfldStudentTableKey1: TAutoIncField;
    wdstrngfldStudentTableDSDesigner: TWideStringField;
    wdstrngfldStudentTableDSDesigner2: TWideStringField;
    wdstrngfldStudentTableDSDesigner3: TWideStringField;
    wdstrngfldStudentTableDSDesigner4: TWideStringField;
    wdstrngfldStudentTableDSDesigner5: TWideStringField;
    wdstrngfldStudentTableDSDesigner6: TWideStringField;
    wdstrngfldStudentTableDSDesigner7: TWideStringField;
    wdstrngfldStudentTableDSDesigner8: TWideStringField;
    atncfldPrepodTableKey1: TAutoIncField;
    intgrfldPrepodTableDSDesigner: TIntegerField;
    wdstrngfldPrepodTableDSDesigner2: TWideStringField;
    intgrfldPrepodTableDSDesigner3: TIntegerField;
    intgrfldPrepodTableDSDesigner4: TIntegerField;
    wdstrngfldPrepodTableDSDesigner5: TWideStringField;
    procedure StudentTableAfterOpen(DataSet: TDataSet);
    procedure tarifAfterOpen(DataSet: TDataSet);
    procedure PersonalTableAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Unit2, TarifUnit, StudentUnit, Unit1, UserUnit;

{$R *.dfm}

procedure TDataModule1.StudentTableAfterOpen(DataSet: TDataSet);
begin
DataModule1.StudentTable.IndexFieldNames:='Фамилия';

end;

procedure TDataModule1.tarifAfterOpen(DataSet: TDataSet);
begin
DataModule1.StudentTable.IndexFieldNames:='Фамилия';
end;

procedure TDataModule1.PersonalTableAfterOpen(DataSet: TDataSet);
begin
DataModule1.PersonalTable.Sort:='Фамилия';
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
     ADOConnection1.Connected:=true;
     StudentTable.active:=true;
     tarif.active:=true;
     UsersTable.active:=true;
     PersonalTable.active:=true;
end;

end.
