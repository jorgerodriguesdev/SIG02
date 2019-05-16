unit U_Recebimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, Menus,
  EditNum, rvclass, rvproj, rvcsstd;

type
  TF_Recebimentos = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label9: TLabel;
    EditProcura: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label11: TLabel;
    data: TMaskEdit;
    Edit7: TEdit;
    EditNum1: TEditNum;
    MaskEdit3: TMaskEdit;
    MaskEdit5: TMaskEdit;
    EditNum4: TEditNum;
    EditNum5: TEditNum;
    EditNum6: TEditNum;
    EditNum7: TEditNum;
    EditNum8: TEditNum;
    Edit1: TEdit;
    Edit10: TEdit;
    Label7: TLabel;
    EditNum2: TEditNum;
    EditNum3: TEditNum;
    Label18: TLabel;
    Edit6: TEdit;
    Edit8: TEdit;
    GroupBox2: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    procedure pinta;
    procedure procura;
    procedure Grava;
    procedure Limpa;
    procedure QueryToEdits;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditNum4Exit(Sender: TObject);
    procedure EditNum6Exit(Sender: TObject);
    procedure EditNum2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function DataToSql(sdata:string):string;
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Recebimentos: TF_Recebimentos;
  codigo,idCol : Integer;
  data1,data2,nCol : String;

implementation

uses U_DMExpress, U_Dados, U_Contas, U_Menu;

{$R *.dfm}

procedure TF_Recebimentos.Limpa;
var
	i:integer;
begin
	for i := 0 to componentcount - 1 do begin
   	if (components[i] is TEdit) then
      	(components[i] as TEdit).Clear;
   end;
	for i := 0 to componentcount - 1 do begin
   	if (components[i] is TMaskEdit) then
      	(components[i] as TMaskEdit).Clear;
   end;
	for i := 0 to componentcount - 1 do begin
   	if (components[i] is TEditNum) then
      	(components[i] as TEditNum).Text := '0,00';
   end;
//   combobox1.Clear;
end;

procedure TF_Recebimentos.QueryToEdits;
begin
	Edit7.Text 		:=		F_DMExpress.Cds_Recebimento.FieldByName('NUMDOC').AsString;
   Edit1.Text 		:=		F_DMExpress.Cds_Recebimento.FieldByName('CODCLIENTE').AsString;
//   Edit10.Text 	:=
   MaskEdit3.Text	:=		F_DMExpress.Cds_Recebimento.FieldByName('EMISSAO').AsString;
   MaskEdit5.Text	:=		F_DMExpress.Cds_Recebimento.FieldByName('VENCIMENTO').AsString;
   EditNum1.Text	:=		F_DMExpress.Cds_Recebimento.FieldByName('VLRTOTAL').AsString;
//   EditNum4.Text	:=
   EditNum5.Text 	:=    F_DMExpress.Cds_Recebimento.FieldByName('JURO').AsString;
//   EditNum6.Text	:=
   EditNum7.Text	:=		F_DMExpress.Cds_Recebimento.FieldByName('MULTA').AsString;
//   EditNum2.Text 	:=
   EditNum3.Text	:=    F_DMExpress.Cds_Recebimento.FieldByName('DESCONTO').AsString;
   EditNum8.Text	:=		F_DMExpress.Cds_Recebimento.FieldByName('VLRECEBIDO').AsString;
	data.text		:=		F_DMExpress.Cds_Recebimento.FieldByName('RECEBIMENTO').AsString;
//   Combobox1.Text	:=		F_DMExpress.Cds_Recebimento.FieldByName('TIPOPGTO').AsString;
//   Edit4.Text		:=
   Edit6.Text		:=		F_DMExpress.Cds_Recebimento.FieldByName('BANCO').AsString;
//   Edit8.Text		:=
end;

procedure TF_Recebimentos.Grava;
begin
	F_DMExpress.Cds_Recebimento.FieldByName('CODIGO').Value			 :=			codigo;
	F_DMExpress.Cds_Recebimento.FieldByName('NUMDOC').AsString     :=	      Edit7.Text;
	F_DMExpress.Cds_Recebimento.FieldByName('CODCLIENTE').AsString    :=	      Edit1.Text;
	F_DMExpress.Cds_Recebimento.FieldByName('EMISSAO').AsString    :=	      MaskEdit3.Text;
	F_DMExpress.Cds_Recebimento.FieldByName('VENCIMENTO').AsString :=	      MaskEdit5.Text;
   F_DMExpress.Cds_Recebimento.FieldByName('VLRTOTAL').AsString   :=	      EditNum1.Text ;
   F_DMExpress.Cds_Recebimento.FieldByName('JURO').AsString       :=         EditNum5.Text  ;
   F_DMExpress.Cds_Recebimento.FieldByName('MULTA').AsString      :=	      EditNum7.Text   ;
   F_DMExpress.Cds_Recebimento.FieldByName('DESCONTO').AsString   :=         EditNum3.Text  ;
   F_DMExpress.Cds_Recebimento.FieldByName('VLRECEBIDO').AsString    :=	      EditNum8.Text   ;
	F_DMExpress.Cds_Recebimento.FieldByName('RECEBIMENTO').AsString  :=	      data.text      ;
   F_DMExpress.Cds_Recebimento.FieldByName('TIPOPGTO').AsString	 :=         Copy(Combobox1.Text,1,1) ;
   F_DMExpress.Cds_Recebimento.FieldByName('BANCO').AsString      :=	      Edit6.Text       ;
end;

procedure TF_Recebimentos.pinta;
var
	i : integer;
begin
	for i := 0 to DbGrid1.Columns.Count - 1 do
   	DbGrid1.Columns.Items[i].Color := clWindow;
   DbGrid1.Columns.Items[idCol].Color := clInfoBk;
end;

procedure TF_Recebimentos.procura;
begin
	If EditProcura.Text <> '' then begin
   	if ncol = '' then
      	Application.MessageBox('Primeiro Ordene uma Coluna para Realizar a Consulta','Clique em um Título',MB_OK + MB_IconError)
      else begin
      	Data1 := DataToSQL(MaskEdit1.Text);
			Data2 := DataToSQL(MaskEdit2.Text);
      	F_DMExpress.Q_Recebimento.Active := False;
         F_DMExpress.Q_Recebimento.SQL.Clear;
         F_DMExpress.Q_Recebimento.SQL.Add('SELECT * FROM RECEBIMENTO WHERE '+nCol+' LIKE '+#39+EditProcura.Text+'%'+#39);
         F_DMExpress.Q_Recebimento.SQL.Add(' AND VENCIMENTO BETWEEN '+#39+Data1+#39+' and '+#39+Data2+#39);
         F_DMExpress.Q_Recebimento.SQL.Add('order by '+nCol);
      	F_DMExpress.Q_Recebimento.Active := True;
			F_DMExpress.Cds_Recebimento.Refresh;
      end;
   end;
end;

procedure TF_Recebimentos.FormCreate(Sender: TObject);
begin
	MaskEdit1.Text := DateToStr(Date);
	MaskEdit2.Text := DateToStr(Date);   
	F_DMExpress.Cds_Recebimento.Active := True;
   F_DMExpress.T_TipoPgto.Active := True;
   F_DMExpress.T_TipoPgto.First;
   While not F_DMExpress.T_TipoPgto.eof do begin
   	combobox1.Items.Add(F_DMExpress.T_TipoPgtoCodigo.AsString + ' - ' + F_DMExpress.T_TipoPgtoDescricao.AsString);
		F_DMExpress.T_TipoPgto.Next;
   end;
end;

procedure TF_Recebimentos.BitBtn5Click(Sender: TObject);
begin
	close;
end;

procedure TF_Recebimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	release;
end;

procedure TF_Recebimentos.BitBtn6Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then begin
   	F_DMExpress.Cds_Recebimento.Delete;
      F_DMExpress.Cds_Recebimento.ApplyUpdates(0);
   end;
end;

procedure TF_Recebimentos.Incluir1Click(Sender: TObject);
var
	total:integer;
   limit1,limit2:string;
begin
	if F_Menu.Label3.Caption = 'MySQL' then begin
		F_DMExpress.Q_Recebimento.active := false;
		F_DMExpress.Q_Recebimento.sql.clear;
		F_DMExpress.Q_Recebimento.sql.add('select count(*) as total from recebimento');
		F_DMExpress.Q_Recebimento.active := true;
   	//
	   total := F_DMExpress.Q_Recebimento.fieldbyname('total').value;
   	limit1 := inttostr(total-1);
	   limit2 := inttostr(total);
   	//
		F_DMExpress.Q_Recebimento.active := false;
		F_DMExpress.Q_Recebimento.sql.clear;
		F_DMExpress.Q_Recebimento.sql.add('select * from recebimento limit '+limit1+','+limit2);
		F_DMExpress.Q_Recebimento.active := true;
   	//
      try
	   	codigo := F_DMExpress.Q_Recebimento.fieldbyname('codigo').value + 1;
      except
      	codigo := 1;
      end;
   end
   else begin
   	F_DMEXpress.QSP_Recebimento.Close;
   	F_DMEXpress.QSP_Recebimento.Open;
		codigo := F_DMEXpress.QSP_Recebimento.FieldBYName('ID').AsInteger;
   end;
	//
	GroupBox1.Visible := True;
	Edit7.SetFocus;
	F_DMExpress.Cds_Recebimento.Append;
end;

procedure TF_Recebimentos.Alterar1Click(Sender: TObject);
begin
	GroupBox1.Visible := True;
   QueryToEdits;
	Edit7.SetFocus;
   codigo := F_DMExpress.Cds_Recebimento.FieldByName('codigo').AsInteger;
	F_DMExpress.Cds_Recebimento.Edit;
end;

procedure TF_Recebimentos.DBGrid1TitleClick(Column: TColumn);
begin
	idCol := Column.ID;
   nCol := Column.FieldName;
   pinta;
   procura;
end;

procedure TF_Recebimentos.BitBtn3Click(Sender: TObject);
begin
	DBGrid1.SetFocus;
	GroupBox1.Visible := False;
	F_DMExpress.Cds_Recebimento.Cancel;
 	Limpa;
end;

procedure TF_Recebimentos.BitBtn2Click(Sender: TObject);
begin
	F_DMExpress.Q_Recebimento.Close;
	DBGrid1.SetFocus;
	GroupBox1.Visible := False;
   Grava;
	F_DMExpress.Cds_Recebimento.Post;
   F_DMExpress.Cds_Recebimento.ApplyUpdates(-1);
 	Limpa;
end;

procedure TF_Recebimentos.EditNum4Exit(Sender: TObject);
begin
	EditNum5.Text := FloatToStr((StrToFloat(EditNum1.Text) * (StrToFloat(EditNum4.Text) / 100)));
end;

procedure TF_Recebimentos.EditNum6Exit(Sender: TObject);
begin
	EditNum7.Text := FloatToStr((StrToFloat(EditNum1.Text) * (StrToFloat(EditNum6.Text) / 100)));
end;

procedure TF_Recebimentos.EditNum2Exit(Sender: TObject);
begin
	EditNum3.Text := FloatToStr((StrToFloat(EditNum1.Text) * (StrToFloat(EditNum2.Text) / 100)));
   EditNum8.Text := FloatToStr (StrToFloat(EditNum1.Text) + StrToFloat(EditNum5.Text) + StrToFloat(EditNum7.Text) - StrToFloat(Editnum3.Text));
end;

procedure TF_Recebimentos.SpeedButton1Click(Sender: TObject);
begin
	procura;
end;

procedure TF_Recebimentos.EditProcuraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = 113 then
   	procura;
end;

function TF_Recebimentos.DataToSql(sdata: string): string;
begin
	result := Copy(sdata,7,4) + '/' + Copy(sdata,4,2) + '/' + Copy(sdata,1,2);
end;

procedure TF_Recebimentos.BitBtn4Click(Sender: TObject);
begin
	F_DMExpress.Rv_Recebimento.ProjectFile := 'Recebimento.rav';
	F_DMExpress.Rv_Recebimento.Execute;
end;

end.
