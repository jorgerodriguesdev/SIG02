unit U_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, MenBtn, Menus,
  EditNum, printfast;

type
  TF_Pedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    datainicio: TMaskEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn1: TMenuButton;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Acessar1: TMenuItem;
    BitBtn4: TMenuButton;
    PopupMenu2: TPopupMenu;
    Imprimir1: TMenuItem;
    ImportarItens1: TMenuItem;
    Label3: TLabel;
    Edit5: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Combobox1: TEdit;
    Combobox2: TEdit;
    Combobox3: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label34: TLabel;
    EditNum20: TEditNum;
    Label24: TLabel;
    EditNum5: TEditNum;
    EditNum15: TEditNum;
    Label29: TLabel;
    EditNum10: TEditNum;
    N1: TMenuItem;
    AtualizaValores1: TMenuItem;
    pf: TPrintFast;
    procedure pegacotacao;
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
    procedure Edit5Exit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure AtualizaValores1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Pedido: TF_Pedido;

implementation

uses U_DMADO, U_ImpItemCot, U_Menu;

{$R *.dfm}

procedure TF_Pedido.BitBtn5Click(Sender: TObject);
begin
	Close;
end;

procedure TF_Pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Release;
end;

procedure TF_Pedido.Incluir1Click(Sender: TObject);
begin
	habilita;
	F_DMADO.Q_CPedido.Active := True;
   if F_Menu.Label3.Caption = 'MySQL' then begin
	   F_DMADO.Q_CPedido.Append;
	   F_DMADO.Q_CPedido.FieldByName('DATAPED').AsDateTime := Date;
	   F_DMADO.Q_CPedido.Post;
	   F_DMADO.Q_CPedido.Edit;
	   Edit2.Text := StringOfChar('0',10-Length(F_DMADO.Q_CPedido.FieldByName('CODIGO').AsString)) + F_DMADO.Q_CPedido.FieldByName('CODIGO').AsString;
   end
   else begin
   	F_DMADO.SP_CPedido.Active := False;
   	F_DMADO.SP_CPedido.Active := True;
	   Edit2.Text := StringOfChar('0',10-Length(F_DMADO.SP_CPedido.FieldByName('ID').AsString)) + F_DMADO.SP_CPedido.FieldByName('ID').AsString;
		F_DMADO.Q_Consultas.Active := False;
		F_DMADO.Q_Consultas.SQL.Clear;
      F_DMADO.Q_Consultas.SQL.Add('insert into C_PEDIDO (CODIGO) values (:CODIGO)');
      F_DMADO.Q_Consultas.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
      F_DMADO.Q_Consultas.ExecSQL;
	end;
   Edit2.ReadOnly := True;
   Edit5.SetFocus;
   Edit5.ReadOnly := False;
end;

procedure TF_Pedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = 115 then begin
		Application.CreateForm(TF_ImpItemCot,F_ImpItemCot);
	   F_ImpItemCot.ShowModal;
	end;
end;

procedure TF_Pedido.FormCreate(Sender: TObject);
begin
   desabilita;
   pegaitens;
end;

procedure TF_Pedido.Acessar1Click(Sender: TObject);
begin
	habilita;
	Edit2.SetFocus;
   Edit2.ReadOnly := False;
   Edit5.Enabled := False;
end;

procedure TF_Pedido.Edit2Exit(Sender: TObject);
begin
	Edit2.Text := StringOfChar('0',10-Length(Edit2.Text)) + Edit2.Text;
   F_DMADO.Q_CPedido.Active := False;
   F_DMADO.Q_CPedido.SQL.Clear;
   F_DMADO.Q_CPedido.SQL.Add('select * from C_PEDIDO where CODIGO='+#39+Edit2.Text+#39);
   F_DMADO.Q_CPedido.Active := True;
   if F_DMADO.Q_CPedido.FieldByName('CODIGO').AsString <> '' then begin
   	datainicio.Text := F_DMADO.Q_CPedido.FieldByName('DATAPED').AsString;
   	Edit5.Text := F_DMADO.Q_CPedido.FieldByName('CODCOT').AsString;
      pegacotacao;
      Edit6.Text := F_DMADO.Q_CPedido.FieldByName('ENTREGA').AsString;
      Edit7.Text := F_DMADO.Q_CPedido.FieldByName('COBRANCA').AsString;
      EditNum20.Text := F_DMADO.Q_CPedido.FieldByName('VALOR').AsString;
      EditNum5.Text := F_DMADO.Q_CPedido.FieldByName('DESCONTO').AsString;
      EditNum10.Text := F_DMADO.Q_CPedido.FieldByName('TOTAL').AsString;
      if F_DMADO.Q_CPedido.FieldByName('ESCOLHIDO').AsString = '1' then
      	Radiobutton1.checked := True;
      if F_DMADO.Q_CPedido.FieldByName('ESCOLHIDO').AsString = '2' then
      	Radiobutton2.checked := True;
      if F_DMADO.Q_CPedido.FieldByName('ESCOLHIDO').AsString = '3' then
      	Radiobutton3.checked := True;
      //pegar o codigo e o nome dos fornecedores e jogar nos comboboxes
      F_DMADO.Q_CPedido.Edit;
      pegaitens;
   end
   else begin
   	Application.MessageBox('Número de Pedido não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Limpa;
   end;
end;

procedure TF_Pedido.limpa;
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
end;

procedure TF_Pedido.habilita;
begin
	Panel1.Enabled := True;
   BitBtn2.Enabled := True;
   BitBtn3.Enabled := True;
   BitBtn4.Enabled := True;
   BitBtn6.Enabled := True;
   BitBtn1.Enabled := False;
   BitBtn5.Enabled := False;
end;

procedure TF_Pedido.desabilita;
begin
	Panel1.Enabled := False;
   BitBtn2.Enabled := False;
   BitBtn3.Enabled := False;
   BitBtn4.Enabled := False;
   BitBtn6.Enabled := False;
   BitBtn1.Enabled := True;
   BitBtn5.Enabled := True;
end;

procedure TF_Pedido.BitBtn2Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
   	F_DMADO.Q_DPedido.Delete;
end;

procedure TF_Pedido.BitBtn6Click(Sender: TObject);
begin
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('CODCOT').Value := StrToInt(Edit5.Text);
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('DATAPED').Value := StrToDate(datainicio.Text);
   if Radiobutton1.checked = True then begin
		F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('ESCOLHIDO').Value := 1;
		F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('CODFORN').Value := StrToInt(combobox1.Text);
   end;
   if Radiobutton2.checked = True then begin
		F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('ESCOLHIDO').Value := 2;
		F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('CODFORN').Value := StrToInt(combobox2.Text);
   end;
   if Radiobutton3.checked = True then begin
		F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('ESCOLHIDO').Value := 3;
		F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('CODFORN').Value := StrToInt(combobox3.Text);
   end;
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('ENTREGA').Value := Edit6.Text;
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('COBRANCA').Value := Edit7.Text;
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('VALOR').Value := StrToFloat(EditNum20.Text);
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('DESCONTO').Value := StrToFloat(EditNum5.Text);
	F_DMADO.Q_AtualizaCPed.Parameters.ParamByName('TOTAL').Value := StrToFloat(EditNum10.Text);
   F_DMADO.Q_AtualizaCPed.ExecSQL;
   Limpa;
   desabilita;
   pegaitens;
end;

procedure TF_Pedido.BitBtn3Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Cancelar? - Todos os Itens serão Perdidos!','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then begin
   	//é melhor um cancel ou um delete?
	 	F_DMADO.Q_CPedido.Cancel;
      //implementar aqui o codigo que deletará os itens da tabela D_Requisicao.
		limpa;
   end;
   desabilita;
   pegaitens;
end;

procedure TF_Pedido.pegaitens;
begin
	F_DMADO.Q_DPedido.Active := False;
	F_DMADO.Q_DPedido.SQL.Clear;
   if Edit2.Text <> '' then
		F_DMADO.Q_DPedido.SQL.Add('select * from D_PEDIDO where CODPED='+#39+Edit2.Text+#39)
   else
		F_DMADO.Q_DPedido.SQL.Add('select * from D_PEDIDO where CODPED=0');
	F_DMADO.Q_DPedido.Active := True;
end;

procedure TF_Pedido.pegacotacao;
begin
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from C_COTACAO where codigo='+#39+Edit5.Text+#39);
  	F_DMADO.Q_Consultas.Active := True;
   Combobox1.Text := F_DMADO.Q_Consultas.FieldByName('FORN1').AsString;
   Combobox2.Text := F_DMADO.Q_Consultas.FieldByName('FORN2').AsString;
   Combobox3.Text := F_DMADO.Q_Consultas.FieldByName('FORN3').AsString;
end;

procedure TF_Pedido.Edit5Exit(Sender: TObject);
begin
	Edit5.Text := StringOfChar('0',10-Length(Edit5.Text)) + Edit5.Text;
   pegacotacao;
   if F_DMADO.Q_Consultas.FieldByName('CODIGO').AsString = '' then begin
   	Application.MessageBox('Número de Cotação não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Limpa;
      desabilita;
   end;
end;

procedure TF_Pedido.RadioButton1Click(Sender: TObject);
begin
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from C_COTACAO where codigo='+#39+Edit5.Text+#39);
  	F_DMADO.Q_Consultas.Active := True;
   EditNum5.Text := F_DMADO.Q_Consultas.FieldByName('DESCONTO1').AsString;
end;

procedure TF_Pedido.RadioButton2Click(Sender: TObject);
begin
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from C_COTACAO where codigo='+#39+Edit5.Text+#39);
  	F_DMADO.Q_Consultas.Active := True;
   EditNum5.Text := F_DMADO.Q_Consultas.FieldByName('DESCONTO2').AsString;
end;

procedure TF_Pedido.RadioButton3Click(Sender: TObject);
begin
	F_DMADO.Q_Consultas.Active := False;
	F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select * from C_COTACAO where codigo='+#39+Edit5.Text+#39);
  	F_DMADO.Q_Consultas.Active := True;
   EditNum5.Text := F_DMADO.Q_Consultas.FieldByName('DESCONTO3').AsString;
end;

procedure TF_Pedido.AtualizaValores1Click(Sender: TObject);
begin
	F_DMADO.Q_Consultas.Active := False;
   F_DMADO.Q_Consultas.SQL.Clear;
   F_DMADO.Q_Consultas.SQL.Add('select sum(VLRTOTAL) as TOTAL');
   F_DMADO.Q_Consultas.SQL.Add(' from D_PEDIDO where CODPED='+#39+Edit2.Text+#39);
	F_DMADO.Q_Consultas.Active := True;
   //
   EditNum20.Text := F_DMADO.Q_Consultas.FieldByName('TOTAL').AsString;
   //
   EditNum15.Text := FloatToStr((StrToFloat(EditNum5.Text) * StrToFloat(EditNum20.Text)) / 100);
   EditNum10.Text := FloatToStr(StrToFloat(EditNum20.Text) - StrToFloat(EditNum15.Text));
end;

procedure TF_Pedido.Imprimir1Click(Sender: TObject);
var
   sub,desc,tot:double;
begin
   PF.Preview := True;
   PF.PageHeader := True;
   PF.HeaderData.Title1      := 'Albert Eije Barreto Mouta';
   PF.HeaderData.Title2      := 'www.alberteije.com';
   PF.HeaderData.Left4 := PF.Repete(' ',51)+'***   PEDIDO DE COMPRAS   ***';
   PF.PageWidth := 132;
   PF.QtLines   := 60;
   //
   if PF.IniciaImpr then begin
      PF.ImprComo(pCompr175);
      PF.ImprString('','PEDIDO DE COMPRAS No..: '+Edit2.Text,0,False);
      PF.ImprString('','DATA..: '+datainicio.text,114,True);
      PF.ImprString('','Referente a Cotacao No..: '+Edit5.Text,0,True);
      PF.ImprString('','Local de Entrega: '+Edit6.Text,0,False);
      PF.ImprString('','Local de Cobranca: '+Edit7.Text,65,True);
      If RadioButton1.Checked then begin
         PF.ImprString('','Fornecedor: '+Combobox1.Text,0,False);
      end
      else if RadioButton2.Checked then begin
         PF.ImprString('','Fornecedor: '+Combobox2.Text,0,False);
      end
      else if RadioButton3.Checked then begin
         PF.ImprString('','Fornecedor: '+Combobox3.Text,0,False);
      end;
      PF.ImprString('','',0,True);
      //
      PF.ImprString('',PF.Repete('-',132),0,True);
      PF.ImprString('','CODIGO',0,False);
      PF.ImprString('','QUANT',17,False);
      PF.ImprString('','DESCRICAO',34,False);
      PF.ImprString('','UNITARIO',109,False);
      PF.ImprString('','TOTAL',124,True);
      PF.ImprString('',PF.Repete('-',132),0,True);
      //
      F_DMADO.Q_DPedido.DisableControls;
      F_DMADO.Q_DPedido.First;
      while not F_DMADO.Q_DPedido.eof do begin
            PF.ImprString('',F_DMADO.Q_DPedidoCodProd.asstring,0,False);
            PF.ImprString('',PF.MascaraVlr('##,##0',F_DMADO.Q_DPedidoQtde.value),15,False);
            PF.ImprString('',F_DMADO.Q_DPedidoDescricao.asstring,34,False);
            PF.ImprString('',PF.MascaraVlr('##,##0.00',F_DMADO.Q_DPedidoVlrUnitario.value),108,False);
            PF.ImprString('',PF.MascaraVlr('##,##0.00',F_DMADO.Q_DPedidoVlrTotal.value),123,True);
            F_DMADO.Q_DPedido.next;
      end;
      sub  := strtofloat(EditNum20.text);
      desc := strtofloat(EditNum15.text);
      tot  := strtofloat(EditNum10.text);
      //
      PF.ImprString('',PF.Repete('-',132),0,True);
      PF.ImprString('','VALOR SUBTOTAL DO PEDIDO',0,False);
      PF.ImprString('',PF.MascaraVlr('##,##0.00',sub),123,True);
      PF.ImprString('','VALOR DO DESCONTO ('+EditNum5.Text +'%)',0,False);
      PF.ImprString('',PF.MascaraVlr('##,##0.00',desc),123,True);
      PF.ImprString('','TOTAL GERAL DO PEDIDO',0,False);
      PF.ImprString('',PF.MascaraVlr('##,##0.00',tot),123,True);
      PF.ImprString('',PF.Repete('-',132),0,True);      
      //
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','_______________________________________________',43,True);
      PF.ImprString('','                AUTORIZADO POR                 ',43,True);
      //
      PF.Ejeta;
      PF.ImprComo(tCompr175);
      PF.FimImpr;
      F_DMADO.Q_DPedido.First;
      F_DMADO.Q_DPedido.EnableControls;
   end;
end;

end.
