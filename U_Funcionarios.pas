unit U_Funcionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, DBCtrls,
  DosMove;

type
  TF_Funcionarios = class(TForm)
    PanTitulo: TPanel;
    PanGrid: TPanel;
    DBGrid1: TDBGrid;
    PanBotoes: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PanEdits: TPanel;
    BitBtn6: TBitBtn;
    EditProcura: TEdit;
    Label9: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Bevel2: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    CheckBox1: TCheckBox;
    EditNome: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    procedure auditoria;
    procedure limpa;
    procedure grava;
    procedure QueryToEdits;
    procedure procura;
    procedure pinta;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Funcionarios: TF_Funcionarios;
  idCol,confira : Integer;
  nCol : String;

implementation

uses U_Dados, U_Menu, UR_Funcionarios;

{$R *.dfm}

procedure TF_Funcionarios.auditoria;
begin
	if confira = 1 then
		F_Dados.Q_Funcionario.FieldByName('Auditoria').AsString := F_Menu.Label5.Caption + ' - ' + DateTimeToStr(Now) + ' - INCLUSAO';
	if confira = 2 then
		F_Dados.Q_Funcionario.FieldByName('Auditoria').AsString := F_Menu.Label5.Caption + ' - ' + DateTimeToStr(Now) + ' - ALTERACAO';
end;

procedure TF_Funcionarios.limpa;
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
   CheckBox1.Checked := False;
end;

procedure TF_Funcionarios.QueryToEdits;
begin
	EditNome.Text		:= 		F_Dados.Q_Funcionario.FieldByName('Nome').AsString;
	Edit2.Text			:= 		F_Dados.Q_Funcionario.FieldByName('coddpto').AsString;
   Edit3.Text			:= 		F_Dados.Q_Funcionario.FieldByName('email').AsString;
   Edit4.Text			:= 		F_Dados.Q_Funcionario.FieldByName('endereco').AsString;
   Edit5.Text			:= 		F_Dados.Q_Funcionario.FieldByName('bairro').AsString;
   Edit6.Text			:= 		F_Dados.Q_Funcionario.FieldByName('cidade').AsString;
   Edit7.Text			:= 		F_Dados.Q_Funcionario.FieldByName('cep').AsString;
   Edit8.Text			:= 		F_Dados.Q_Funcionario.FieldByName('estado').AsString;
   MaskEdit1.Text		:=			F_Dados.Q_Funcionario.FieldByName('fone').AsString;
   MaskEdit2.Text		:=			F_Dados.Q_Funcionario.FieldByName('celular').AsString;
   MaskEdit3.Text		:=			F_Dados.Q_Funcionario.FieldByName('posse').AsString;
   MaskEdit4.Text		:=			F_Dados.Q_Funcionario.FieldByName('cpf').AsString;
   Edit12.Text			:= 		F_Dados.Q_Funcionario.FieldByName('rg').AsString;
   Edit13.Text			:= 		F_Dados.Q_Funcionario.FieldByName('orgaorg').AsString;
   Edit14.Text			:= 		F_Dados.Q_Funcionario.FieldByName('cargo').AsString;
   Edit15.Text			:= 		F_Dados.Q_Funcionario.FieldByName('comissao').AsString;
   Edit17.Text			:= 		F_Dados.Q_Funcionario.FieldByName('login').AsString;
   Edit18.Text			:= 		F_Dados.Q_Funcionario.FieldByName('senha').AsString;
   if F_Dados.Q_Funcionario.FieldByName('actotal').AsString = 'X' then
   	checkbox1.Checked := True;
end;

procedure TF_Funcionarios.Grava;
begin
	auditoria;
	F_Dados.Q_Funcionario.FieldByName('Nome').AsString			:= EditNome.Text ;
	F_Dados.Q_Funcionario.FieldByName('coddpto').AsString		:= Edit2.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('email').AsString		:= Edit3.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('endereco').AsString	:= Edit4.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('bairro').AsString		:= Edit5.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('cidade').AsString		:= Edit6.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('cep').AsString			:= Edit7.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('estado').AsString		:= Edit8.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('fone').AsString			:=	MaskEdit1.Text;
   F_Dados.Q_Funcionario.FieldByName('celular').AsString		:=	MaskEdit2.Text;
   if maskedit3.text <> '  /  /    ' then
	   F_Dados.Q_Funcionario.FieldByName('posse').AsString		:=	MaskEdit3.Text;
   F_Dados.Q_Funcionario.FieldByName('cpf').AsString			:=	MaskEdit4.Text;
   F_Dados.Q_Funcionario.FieldByName('rg').AsString			:= Edit12.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('orgaorg').AsString		:= Edit13.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('cargo').AsString		:= Edit14.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('comissao').AsString	:= Edit15.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('login').AsString		:= Edit17.Text	  ;
   F_Dados.Q_Funcionario.FieldByName('senha').AsString		:= Edit18.Text	  ;
   if checkbox1.Checked then
   	F_Dados.Q_Funcionario.FieldByName('actotal').AsString := 'X' ;
end;

procedure TF_Funcionarios.pinta;
var
	i : integer;
begin
	for i := 0 to DbGrid1.Columns.Count - 1 do
   	DbGrid1.Columns.Items[i].Color := clWindow;
   DbGrid1.Columns.Items[idCol].Color := clInfoBk;
end;

procedure TF_Funcionarios.procura;
begin
	If EditProcura.Text <> '' then begin
   	if ncol = '' then
      	Application.MessageBox('Primeiro Ordene uma Coluna para Realizar a Consulta','Clique em um Título',MB_OK + MB_IconError)
      else begin
      	F_Dados.Q_Funcionario.Active := False;
         F_Dados.Q_Funcionario.SQL.Clear;
         F_Dados.Q_Funcionario.SQL.Add('SELECT * FROM FUNCIONARIO WHERE '+nCol+' LIKE '+#39+EditProcura.Text+'%'+#39);
         F_Dados.Q_Funcionario.SQL.Add('order by '+nCol);
      	F_Dados.Q_Funcionario.Active := True;
      end;
   end;
end;

procedure TF_Funcionarios.BitBtn5Click(Sender: TObject);
begin
	close;
end;

procedure TF_Funcionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Release;
end;

procedure TF_Funcionarios.BitBtn1Click(Sender: TObject);
begin
	confira := 1;
	F_Dados.Q_Funcionario.Append;
   PanTitulo.Caption := 'Cadastro de Funcionários - Inserindo';
   PanGrid.SendToBack;
   EditNome.SetFocus;
   PanBotoes.Enabled := False;
end;

procedure TF_Funcionarios.BitBtn2Click(Sender: TObject);
begin
	confira := 2;
	F_Dados.Q_Funcionario.Edit;
   QueryToEdits;
   PanTitulo.Caption := 'Cadastro de Funcionários - Alterando';
   PanGrid.SendToBack;
   PanBotoes.Enabled := False;   
end;

procedure TF_Funcionarios.BitBtn3Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
   	F_Dados.Q_Funcionario.Delete;
end;

procedure TF_Funcionarios.BitBtn6Click(Sender: TObject);
begin
	confira := 3;
   PanTitulo.Caption := 'Cadastro de Funcionários - Consultando';
   PanGrid.SendToBack;
   PanBotoes.Enabled := False;   
end;

procedure TF_Funcionarios.BitBtn7Click(Sender: TObject);
begin
	if confira <> 3 then
		F_Dados.Q_Funcionario.Cancel;
   PanGrid.BringToFront;
   PanBotoes.Enabled := True;
   Limpa;   
end;

procedure TF_Funcionarios.BitBtn8Click(Sender: TObject);
begin
	if confira <> 3 then begin
	   grava;
		F_Dados.Q_Funcionario.Post;
   end;
   PanGrid.BringToFront;
   PanBotoes.Enabled := True;
   Limpa;   
end;

procedure TF_Funcionarios.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
	key := upcase(key);
end;

procedure TF_Funcionarios.DBGrid1TitleClick(Column: TColumn);
begin
	idCol := Column.ID;
   nCol := Column.FieldName;
   pinta;
   procura;
end;

procedure TF_Funcionarios.FormCreate(Sender: TObject);
begin
	F_Dados.Q_Funcionario.Active := False;
   F_Dados.Q_Funcionario.SQL.Clear;
   F_Dados.Q_Funcionario.SQL.Add('SELECT * FROM FUNCIONARIO WHERE CODIGO=1');
   F_Dados.Q_Funcionario.Active := True;
end;

procedure TF_Funcionarios.SpeedButton1Click(Sender: TObject);
begin
	procura;
end;

procedure TF_Funcionarios.EditProcuraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = 113 then
   	procura;
end;

procedure TF_Funcionarios.BitBtn4Click(Sender: TObject);
begin
	Application.CreateForm(TFR_Funcionarios,FR_Funcionarios);
   FR_Funcionarios.QuickRep1.Preview;
end;

end.
