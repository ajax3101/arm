unit TarifUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ToolWin, ComCtrls, Menus, StdCtrls, ExtCtrls,
  DBCtrls,ComObj, about;

type
  TTarifForm = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label1: TLabel;
    FilterFamEdit: TEdit;
    Sort: TMenuItem;
    N5: TMenuItem;
    PrepodNavigator: TDBNavigator;
    ExelItem: TMenuItem;
    Cghfdrf1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4Click(Sender: TObject);
    procedure FilterFamEditChange(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ExelItemClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TarifForm: TTarifForm;

implementation

uses DataModuleUnit, StudentUnit, UserUnit, Unit1;

{$R *.dfm}

procedure TTarifForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
StudentForm.Close;
end;

procedure TTarifForm.N4Click(Sender: TObject);
begin
TarifForm.Hide;
StudentForm.Show;
end;

procedure TTarifForm.FilterFamEditChange(Sender: TObject);
begin
If Length(FilterFamEdit.Text)>0 then
   DataModule1.tarif.Filtered:=true
 else DataModule1.tarif.Filtered:=false;
DataModule1.tarif.Filter:='Фамилия>'''+FilterFamEdit.Text+'''';
end;

procedure TTarifForm.N5Click(Sender: TObject);
begin
DataModule1.tarif.IndexFieldNames:='Наименование';
end;

procedure TTarifForm.ExelItemClick(Sender: TObject);
var
 XLApp,Sheet,Colum:Variant;
 index,i:Integer;
begin
 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='Тарифы';
 Colum:=XLApp.Workbooks[1].WorkSheets['Тарифы'].Columns;
 Colum.Columns[1].ColumnWidth:=20;
 Colum.Columns[2].ColumnWidth:=20;
 Colum.Columns[3].ColumnWidth:=20;
 Colum.Columns[4].ColumnWidth:=20;
 Colum.Columns[5].ColumnWidth:=20;

 Colum:=XLApp.Workbooks[1].WorkSheets['Тарифы'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[1].Font.Bold:=true;
 Colum.Rows[1].Font.Color:=clBlack;
 Colum.Rows[1].Font.Size:=14;

 Sheet:=XLApp.Workbooks[1].WorkSheets['Тарифы'];
 Sheet.Cells[1,2]:='Индекс услуги';
 Sheet.Cells[2,1]:='Наименование';
 Sheet.Cells[2,2]:='Тариф';
 Sheet.Cells[2,3]:='Тип начисления';
 Sheet.Cells[2,4]:='Примечание';
 Sheet.Cells[2,5]:='Телефон';

 index:=3;
 DataModule1.tarif.First;
 for i:=0 to DataModule1.tarif.RecordCount-1 do
  begin
   Sheet.Cells[index,1]:=DataModule1.tarif.Fields.Fields[1].AsString;
   Sheet.Cells[index,2]:=DataModule1.tarif.Fields.Fields[2].AsString;
   Sheet.Cells[index,3]:=DataModule1.tarif.Fields.Fields[3].AsString;
   Sheet.Cells[index,4]:=DataModule1.tarif.Fields.Fields[5].AsString;
   Sheet.Cells[index,5]:=DataModule1.tarif.Fields.Fields[4].AsString;
   Inc(index);
   DataModule1.tarif.Next;
  end;
 end;

procedure TTarifForm.N6Click(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TTarifForm.N2Click(Sender: TObject);
begin
Close;
end;

procedure TTarifForm.N7Click(Sender: TObject);
var
s:integer;
i:integer;
begin
s:=0;
for i:=0 to DataModule1.tarif.RecordCount-1 do
 s:=s+1;
ShowMessage('Название таблицы: '+Datamodule1.tarif.TableName+#13+'Количество записей: '+IntToStr(s));
end;



procedure TTarifForm.N8Click(Sender: TObject);
begin
PersonalForm.Show;
TarifForm.hide;
end;

procedure TTarifForm.FormCreate(Sender: TObject);
begin
if login='admin' then N9.Visible:=true
  else n9.Visible:=false;
   if Dostup=false then begin
DBGrid1.Enabled:=false;
PrepodNavigator.VisibleButtons:=[nbFirst,nbNext,nbPrior,nbLast,nbRefresh];
DbGrid1.Font.Style:=[fsBold];
end;
end;

procedure TTarifForm.N11Click(Sender: TObject);
begin
 //DataModule1.tarif.IndexFieldNames:='Индекс услуги';
end;

end.
