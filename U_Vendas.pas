unit U_Vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, MenBtn, Menus,
  EditNum;

type
  TF_Vendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Edit3: TEdit;
    datainicio: TMaskEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn1: TMenuButton;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Acessar1: TMenuItem;
    Label3: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    Label34: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    EditNum20: TEditNum;
    EditNum5: TEditNum;
    EditNum15: TEditNum;
    EditNum10: TEditNum;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    Label9: TLabel;
    EditNum1: TEditNum;
    Label10: TLabel;
    Edit8: TEdit;
    procedure calcdesc;
    procedure soma;
    procedure pegaitens;
    procedure habilita;
    procedure desabilita;
    procedure limpa;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Incluir1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Acessar1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure EditNum5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Vendas: TF_Vendas;

implementation

uses U_DMADO, U_Menu;

{$R *.dfm}

procedure TF_Vendas.BitBtn5Click(Sender: TObject);
begin
	Close;
end;

procedure TF_Vendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Release;
end;

procedure TF_Vendas.Incluir1Click(Sender: TObject);
begin
	habilita;
	F_DMADO.Q_CVenda.Active := True;
   if F_Menu.Label3.Caption = 'MySQL' then begin
	   F_DMADO.Q_CVenda.Append;
	   F_DMADO.Q_CVenda.FieldByName('DATAVENDA').AsDateTime := Date;
	   F_DMADO.Q_CVenda.Post;
//	   F_DMADO.Q_CVenda.Edit;
	   Edit2.Text := StringOfChar('0',10-Length(F_DMADO.Q_CVenda.FieldByName('CODIGO').AsString)) + F_DMADO.Q_CVenda.FieldByName('CODIGO').AsString;
   end
   else if F_Menu.Label3.Caption = 'Firebird' then begin
   	F_DMADO.SP_CVenda.Active := True;
   	F_DMADO.SP_CVenda.ExecProc;
//   	F_DMADO.SP_CVenda.Active := False;
	   Edit2.Text := StringOfChar('0',10-Length(F_DMADO.SP_CVenda.FieldByName('ID').AsString)) + F_DMADO.SP_CVenda.FieldByName('ID').AsString;
		F_DMADO.Q_Consultas.Active := False;
		F_DMADO.Q_Consultas.SQL.Clear;
      F_DMADO.Q_Consultas.SQL.Add('insert into C_VENDA (CODIGO) values (:CODIGO)');
      F_DMADO.Q_Consultas.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
      F_DMADO.Q_Consultas.ExecSQL;
   end;
   Edit2.ReadOnly := True;
   Edit3.SetFocus;
end;

procedure TF_Vendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = 115 then begin
//		Application.CreateForm(TF_PegaProdReq,F_PegaProdReq);
//	   F_PegaProdReq.ShowModal;
	end;
end;

procedure TF_Vendas.FormCreate(Sender: TObject);
begin
   desabilita;
   pegaitens;
   //importa cartões
   F_DMADO.T_Cartao.Open;
   F_DMADO.T_Cartao.First;
   while not F_DMADO.T_Cartao.eof do begin
   	Combobox2.Items.Add(StringOfChar('0',3-length(F_DMADO.T_CartaoCodigo.AsString))+F_DMADO.T_CartaoCodigo.AsString + ' - ' + F_DMADO.T_CartaoNome.AsString);
		F_DMADO.T_Cartao.Next;
   end;
   //importa tipos de pagamento
   F_DMADO.T_TipoPgto.Open;
   F_DMADO.T_TipoPgto.First;
   while not F_DMADO.T_TipoPgto.eof do begin
   	Combobox1.Items.Add(StringOfChar('0',3-length(F_DMADO.T_TipoPgtoCodigo.AsString))+F_DMADO.T_TipoPgtoCodigo.AsString + ' - ' + F_DMADO.T_TipoPgtoDescricao.AsString);
		F_DMADO.T_TipoPgto.Next;
   end;
end;

procedure TF_Vendas.Acessar1Click(Sender: TObject);
begin
	habilita;
	Edit2.SetFocus;
   Edit2.ReadOnly := False;
end;

procedure TF_Vendas.Edit2Exit(Sender: TObject);
begin
	Edit2.Text := StringOfChar('0',10-Length(Edit2.Text)) + Edit2.Text;
   F_DMADO.Q_CVenda.Active := False;
   F_DMADO.Q_CVenda.SQL.Clear;
   F_DMADO.Q_CVenda.SQL.Add('select * from C_VENDA where CODIGO='+#39+Edit2.Text+#39);
   F_DMADO.Q_CVenda.Active := True;
   if F_DMADO.Q_CVenda.FieldByName('CODIGO').AsString <> '' then begin
   	Edit3.Text := F_DMADO.Q_CVenda.FieldByName('CODCLI').AsString;
   	datainicio.Text := F_DMADO.Q_CVenda.FieldByName('DATAVENDA').AsString;
   	Edit5.Text := F_DMADO.Q_CVenda.FieldByName('CODFUNC').AsString;
   	Edit6.Text := F_DMADO.Q_CVenda.FieldByName('CFOP').AsString;
   	Combobox1.Text := F_DMADO.Q_CVenda.FieldByName('TIPOPGTO').AsString;
   	Combobox2.Text := F_DMADO.Q_CVenda.FieldByName('CODCARTAO').AsString;
      Maskedit1.Text := F_DMADO.Q_CVenda.FieldByName('PRIVENC').AsString;
      EditNum1.Text := F_DMADO.Q_CVenda.FieldByName('NUMPARCELAS').AsString;
      EditNum20.Text := F_DMADO.Q_CVenda.FieldByName('VALOR').AsString;
      EditNum5.Text := F_DMADO.Q_CVenda.FieldByName('DESCONTO').AsString;
//      EditNum15.Text := F_DMADO.Q_CVenda.FieldByName('VALOR').AsString;
      EditNum10.Text := F_DMADO.Q_CVenda.FieldByName('TOTAL').AsString;
   	Edit8.Text := F_DMADO.Q_CVenda.FieldByName('NUMNOTA').AsString;
//      F_DMADO.Q_CVenda.Edit;
      pegaitens;
   end
   else begin
   	Application.MessageBox('Código da Venda não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Limpa;
   end;
end;

procedure TF_Vendas.limpa;
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
   Combobox1.Text := '';
   Combobox2.Text := '';   
end;

procedure TF_Vendas.habilita;
begin
	Panel1.Enabled := True;
   BitBtn2.Enabled := True;
   BitBtn3.Enabled := True;
   BitBtn4.Enabled := True;
   BitBtn6.Enabled := True;
   BitBtn1.Enabled := False;
   BitBtn5.Enabled := False;
end;

procedure TF_Vendas.desabilita;
begin
	Panel1.Enabled := False;
   BitBtn2.Enabled := False;
   BitBtn3.Enabled := False;
   BitBtn4.Enabled := False;
   BitBtn6.Enabled := False;
   BitBtn1.Enabled := True;
   BitBtn5.Enabled := True;
end;

procedure TF_Vendas.BitBtn2Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
   	F_DMADO.Q_DVenda.Delete;
end;

procedure TF_Vendas.BitBtn6Click(Sender: TObject);
begin
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('CODCLI').Value := StrToInt(Edit3.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('DATAVENDA').Value := StrToDate(datainicio.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('CODFUNC').Value := StrToInt(Edit5.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('NUMNOTA').Value := StrToInt(Edit8.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('CFOP').Value := StrToInt(Edit6.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('TIPOPGTO').Value := StrToInt(Copy(Combobox1.Text,1,3));
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('CODCARTAO').Value := StrToInt(Copy(Combobox2.Text,1,3));
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('PRIVENC').Value := StrToDate(MaskEdit1.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('NUMPARCELAS').Value := StrToInt(EditNum1.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('VALOR').Value := StrToFloat(EditNum20.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('DESCONTO').Value := StrToFloat(EditNum5.Text);
	F_DMADO.Q_AtualizaCVen.Parameters.ParamByName('TOTAL').Value := StrToFloat(EditNum10.Text);
   F_DMADO.Q_AtualizaCVen.ExecSQL;
   Limpa;
   desabilita;
   pegaitens;
end;

procedure TF_Vendas.BitBtn3Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Cancelar? - Todos os Itens serão Perdidos!','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then begin
   	//é melhor um cancel ou um delete?
	 	F_DMADO.Q_CVenda.Cancel;
      //implementar aqui o codigo que deletará os itens da tabela D_Requisicao.
      //isso deve ser feito no cliente ou no BD?
		limpa;
   end;
   desabilita;
   pegaitens;
end;

procedure TF_Vendas.pegaitens;
begin
	F_DMADO.Q_DVenda.Active := False;
	F_DMADO.Q_DVenda.SQL.Clear;
	if edit2.text <> '' then
		F_DMADO.Q_DVenda.SQL.Add('select * from D_VENDA where CODVENDA='+#39+Edit2.Text+#39)
   else
		F_DMADO.Q_DVenda.SQL.Add('select * from D_VENDA where CODVENDA=0');
	F_DMADO.Q_DVenda.Active := True;
end;

procedure TF_Vendas.Edit3Exit(Sender: TObject);
begin
	Edit3.Text := StringOfChar('0',4-Length(Edit3.Text)) + Edit3.Text;
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from CLIENTE where CODIGO='+#39+Edit3.Text+#39);
	F_DMADO.Q_Consultas.Active := True;
   if F_DMADO.Q_Consultas.FieldByName('CODIGO').AsString <> '' then begin
   	Edit4.Text := F_DMADO.Q_Consultas.FieldByName('NOME').AsString;
      datainicio.SetFocus;
   end
   else begin
   	Application.MessageBox('Código de Cliente não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Edit4.Clear;
   	if Edit3.Text <> '0000' then
      	Edit3.Setfocus;
   end;
end;

procedure TF_Vendas.Edit5Exit(Sender: TObject);
begin
	Edit5.Text := StringOfChar('0',4-Length(Edit5.Text)) + Edit5.Text;
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from FUNCIONARIO where CODIGO='+#39+Edit5.Text+#39);
	F_DMADO.Q_Consultas.Active := True;
   if F_DMADO.Q_Consultas.FieldByName('CODIGO').AsString <> '' then begin
   	Edit1.Text := F_DMADO.Q_Consultas.FieldByName('NOME').AsString;
      Edit8.SetFocus;
   end
   else begin
   	Application.MessageBox('Código de Funcionário não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Edit1.Clear;
   	if Edit5.Text <> '0000' then
      	Edit5.Setfocus;
   end;
end;

procedure TF_Vendas.Edit6Exit(Sender: TObject);
begin
	Edit6.Text := StringOfChar('0',4-Length(Edit6.Text)) + Edit6.Text;
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from CFOP where CODIGO='+#39+Edit6.Text+#39);
	F_DMADO.Q_Consultas.Active := True;
   if F_DMADO.Q_Consultas.FieldByName('CODIGO').AsString <> '' then begin
   	Edit7.Text := F_DMADO.Q_Consultas.FieldByName('DESCRICAO').AsString;
      Combobox1.SetFocus;
   end
   else begin
   	Application.MessageBox('Código CFOP não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Edit7.Clear;
   	if Edit6.Text <> '0000' then
      	Edit6.Setfocus;
   end;
end;

procedure TF_Vendas.soma;
begin
   if F_Menu.Label3.Caption = 'MySQL' then begin
		F_DMADO.Q_Consultas.Active := False;
		F_DMADO.Q_Consultas.SQL.Clear;
	   F_DMADO.Q_Consultas.SQL.Add('select sum(VLRTOTAL) as TOTAL from D_VENDA where CODVENDA='+#39+Edit2.Text+#39);
		F_DMADO.Q_Consultas.Active := True;
      EditNum20.Text := F_DMADO.Q_Consultas.FieldByName('TOTAL').AsString;
      calcdesc;
      EditNum10.Text := FloatToStr(StrToFloat(EditNum20.Text) - StrToFloat(EditNum15.Text));
   end
   else begin
		F_DMADO.SP_SomaVenda.Active := True;
		F_DMADO.SP_SomaVenda.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
      F_DMADO.SP_SomaVenda.ExecProc;
      EditNum20.Text := F_DMADO.SP_SomaVenda.FieldByName('SOMA').AsString;
   end;
end;

procedure TF_Vendas.EditNum5Exit(Sender: TObject);
begin
	calcdesc;
end;

procedure TF_Vendas.calcdesc;
begin
	EditNum15.Text := FloatToStr(StrToFloat(EditNum5.Text) * StrToFloat(EditNum20.Text) / 100);
end;

end.
