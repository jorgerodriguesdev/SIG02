unit U_Requisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, MenBtn, Menus,
  printfast;

type
  TF_Requisicao = class(TForm)
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
    pf: TPrintFast;
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
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Requisicao: TF_Requisicao;

implementation

uses U_DMADO, U_PegaProdReq, U_Menu;

{$R *.dfm}

procedure TF_Requisicao.BitBtn5Click(Sender: TObject);
begin
	Close;
end;

procedure TF_Requisicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Release;
end;

procedure TF_Requisicao.Incluir1Click(Sender: TObject);
begin
	habilita;
	F_DMADO.Q_CRequisicao.Active := True;
   if F_Menu.Label3.Caption = 'MySQL' then begin
	   F_DMADO.Q_CRequisicao.Append;
	   F_DMADO.Q_CREquisicao.FieldByName('DATAREQ').AsDateTime := Date;
	   F_DMADO.Q_CRequisicao.Post;
	   F_DMADO.Q_CRequisicao.Edit;
	   Edit2.Text := StringOfChar('0',10-Length(F_DMADO.Q_CRequisicao.FieldByName('CODIGO').AsString)) + F_DMADO.Q_CRequisicao.FieldByName('CODIGO').AsString;
   end
   else if F_Menu.Label3.Caption = 'Firebird' then begin
   	F_DMADO.SP_CRequisicao.Active := False;
   	F_DMADO.SP_CRequisicao.Active := True;
	   Edit2.Text := StringOfChar('0',10-Length(F_DMADO.SP_CRequisicao.FieldByName('ID').AsString)) + F_DMADO.SP_CRequisicao.FieldByName('ID').AsString;
		F_DMADO.Q_Consultas.Active := False;
		F_DMADO.Q_Consultas.SQL.Clear;
      F_DMADO.Q_Consultas.SQL.Add('insert into C_REQUISICAO (CODIGO) values (:CODIGO)');
      F_DMADO.Q_Consultas.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
      F_DMADO.Q_Consultas.ExecSQL;
   end;
   Edit2.ReadOnly := True;
   Edit3.SetFocus;
end;

procedure TF_Requisicao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = 115 then begin
		Application.CreateForm(TF_PegaProdReq,F_PegaProdReq);
	   F_PegaProdReq.ShowModal;
	end;
end;

procedure TF_Requisicao.FormCreate(Sender: TObject);
begin
   desabilita;
   pegaitens;
end;

procedure TF_Requisicao.Acessar1Click(Sender: TObject);
begin
	habilita;
	Edit2.SetFocus;
   Edit2.ReadOnly := False;
end;

procedure TF_Requisicao.Edit2Exit(Sender: TObject);
begin
	Edit2.Text := StringOfChar('0',10-Length(Edit2.Text)) + Edit2.Text;
   F_DMADO.Q_CRequisicao.Active := False;
   F_DMADO.Q_CRequisicao.SQL.Clear;
   F_DMADO.Q_CRequisicao.SQL.Add('select * from C_REQUISICAO where CODIGO='+#39+Edit2.Text+#39);
   F_DMADO.Q_CRequisicao.Active := True;
   if F_DMADO.Q_CRequisicao.FieldByName('CODIGO').AsString <> '' then begin
   	Edit3.Text := F_DMADO.Q_CRequisicao.FieldByName('CODDEPTO').AsString;
   	datainicio.Text := F_DMADO.Q_CRequisicao.FieldByName('DATAREQ').AsString;
   	Edit5.Text := F_DMADO.Q_CRequisicao.FieldByName('CODFUNC').AsString;
      F_DMADO.Q_CRequisicao.Edit;
      pegaitens;
   end
   else begin
   	Application.MessageBox('Número de Requisição não Encontrado','Erro no Sistema',MB_IConError + MB_OK);
      Limpa;
   end;
end;

procedure TF_Requisicao.limpa;
begin
	Edit1.Clear;
	Edit2.Clear;
	Edit3.Clear;
	Edit4.Clear;
	Edit5.Clear;
   Datainicio.Clear;
end;

procedure TF_Requisicao.habilita;
begin
	Panel1.Enabled := True;
   BitBtn2.Enabled := True;
   BitBtn3.Enabled := True;
   BitBtn4.Enabled := True;
   BitBtn6.Enabled := True;
   BitBtn1.Enabled := False;
   BitBtn5.Enabled := False;
end;

procedure TF_Requisicao.desabilita;
begin
	Panel1.Enabled := False;
   BitBtn2.Enabled := False;
   BitBtn3.Enabled := False;
   BitBtn4.Enabled := False;
   BitBtn6.Enabled := False;
   BitBtn1.Enabled := True;
   BitBtn5.Enabled := True;
end;

procedure TF_Requisicao.BitBtn2Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
   	F_DMADO.Q_DRequisicao.Delete;
end;

procedure TF_Requisicao.BitBtn6Click(Sender: TObject);
begin
	F_DMADO.Q_AtualizaCReq.Parameters.ParamByName('CODIGO').Value := StrToInt(Edit2.Text);
	F_DMADO.Q_AtualizaCReq.Parameters.ParamByName('CODDEPTO').Value := StrToInt(Edit3.Text);
	F_DMADO.Q_AtualizaCReq.Parameters.ParamByName('CODFUNC').Value := StrToInt(Edit5.Text);
	F_DMADO.Q_AtualizaCReq.Parameters.ParamByName('DATAREQ').Value := StrToDate(datainicio.Text);
   F_DMADO.Q_AtualizaCReq.ExecSQL;
   Limpa;
   desabilita;
   pegaitens;
end;

procedure TF_Requisicao.BitBtn3Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Cancelar? - Todos os Itens serão Perdidos!','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then begin
   	//é melhor um cancel ou um delete?
	 	F_DMADO.Q_CRequisicao.Cancel;
      //implementar aqui o codigo que deletará os itens da tabela D_Requisicao.
		limpa;
   end;
   desabilita;
   pegaitens;
end;

procedure TF_Requisicao.pegaitens;
begin
	F_DMADO.Q_DRequisicao.Active := False;
	F_DMADO.Q_DRequisicao.SQL.Clear;
	if edit2.text <> '' then
		F_DMADO.Q_DRequisicao.SQL.Add('select * from D_REQUISICAO where CODREQ='+#39+Edit2.Text+#39)
   else
		F_DMADO.Q_DRequisicao.SQL.Add('select * from D_REQUISICAO where CODREQ=0');
	F_DMADO.Q_DRequisicao.Active := True;
end;

procedure TF_Requisicao.BitBtn4Click(Sender: TObject);
begin
   PF.Preview := True;
   PF.PageHeader := True;
   PF.HeaderData.Title1      := 'Albert Eije Barreto Mouta';
   PF.HeaderData.Title2      := 'www.alberteije.com';
   PF.HeaderData.Left4 := PF.Repete(' ',23)+'***   Requisicao de Compras   ***';
   PF.PageWidth := 80;
   PF.QtLines   := 60;
   //
   if PF.IniciaImpr then begin
      PF.ImprString('','REQUISICAO No..: '+Edit2.Text,0,False);
      PF.ImprString('','DATA..: '+datainicio.text,70,True);
      PF.ImprString('','Departamento...: '+Edit3.Text+' - '+Edit4.Text,0,True);
      PF.ImprString('','Solicitante....: '+Edit1.Text,0,True);
      PF.ImprString('','',0,True);
      //
      PF.ImprString('',PF.Repete('-',80),0,True);
      PF.ImprString('','CODIGO',0,False);
      PF.ImprString('','QUANT',17,False);
      PF.ImprString('','DESCRICAO',34,True);
      PF.ImprString('',PF.Repete('-',80),0,True);
      //
      F_DMADO.Q_DRequisicao.DisableControls;
      F_DMADO.Q_DRequisicao.First;
      while not F_DMADO.Q_DRequisicao.eof do begin
            PF.ImprString('',F_DMADO.Q_DRequisicaoCodProd.asstring,0,False);
            PF.ImprString('',PF.MascaraVlr('##,##0',F_DMADO.Q_DRequisicaoQtde.value),15,False);
            PF.ImprString('',F_DMADO.Q_DRequisicaoDescricao.asstring,34,True);
            F_DMADO.Q_DRequisicao.next;
      end;
      PF.ImprString('',PF.Repete('-',80),0,True);
      //
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','',0,True);
      PF.ImprString('','___________________________________',0,False);
      PF.ImprString('','___________________________________',45,True);
      PF.ImprString('','            SOLICITANTE            ',0,False);
      PF.ImprString('','              COMPRAS              ',45,True);
      //
      PF.Ejeta;
      PF.FimImpr;
      F_DMADO.Q_DRequisicao.First;
      F_DMADO.Q_DRequisicao.EnableControls;
   end;
end;

end.
