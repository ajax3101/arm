program arm;

uses
  Forms,
  StudentUnit in 'StudentUnit.pas' {StudentForm},
  DataModuleUnit in 'DataModuleUnit.pas' {DataModule1: TDataModule},
  UserUnit in 'UserUnit.pas' {UserForm},
  Unit1 in 'Unit1.pas' {PersonalForm},
  Unit2 in 'Unit2.pas' {UsersForm},
  about in 'about.pas' {AboutBox},
  TarifUnit in 'TarifUnit.pas' {TarifForm};

{$R *.res}

begin

  Application.Initialize;
  UserForm:=TUserForm.Create(Application);
  UserForm.Visible:=false;
  UserForm.ShowModal;
  UserForm.Hide;
//  UserForm.Free;
  Application.HelpFile := 'C:\work\arm\readme!!!.txt';
  Application.Title := 'АРМ Сотрудника ЖЭКа';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TStudentForm, StudentForm);
  Application.CreateForm(TPersonalForm, PersonalForm);
  Application.CreateForm(TUsersForm, UsersForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TTarifForm, TarifForm);
  Application.Run;
end.
