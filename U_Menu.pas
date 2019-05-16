unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ExtCtrls, Buttons, StdCtrls, DosMove;

type
  TF_Menu = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    LinhaStatus: TStatusBar;
    Cadastro1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionrios1: TMenuItem;
    Bancos1: TMenuItem;
    Departamentos1: TMenuItem;
    Cartes1: TMenuItem;
    Unidades1: TMenuItem;
    PlanodeContas1: TMenuItem;
    iposdePagamentoRecebimento1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Movimento1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ControledeEstoque1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    N4: TMenuItem;
    SistemadeSegurana1: TMenuItem;
    rocarSenhaCorrente1: TMenuItem;
    DefinirNvelAcesso1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label3: TLabel;
    N5: TMenuItem;
    Sair1: TMenuItem;
    Label4: TLabel;
    Label5: TLabel;
    Requisio1: TMenuItem;
    Cotao1: TMenuItem;
    ConfirmaCotao1: TMenuItem;
    Pedido1: TMenuItem;
    EntradadeNF1: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    Sada1: TMenuItem;
    Sair2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DefinirNvelAcesso1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Requisio1Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure ConfirmaCotao1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure EntradadeNF1Click(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
  private
  	 Procedure ShowHint (Sender: TOBject);  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Menu: TF_Menu;

implementation

uses U_Unidades, U_Produtos, U_Funcionarios, U_NivelAcesso, U_Dados,
  U_Bancos, U_Pagamentos, U_Recebimentos, U_Requisica, U_Cotacao,
  U_ConfCotacao, U_Pedido, U_Vendas, U_Entradas, U_Ajuste;

{$R *.dfm}

Procedure TF_Menu.ShowHint (Sender: TOBject);
Begin
	LinhaStatus.Panels.items[0].text := Application.Hint;
End;

procedure TF_Menu.FormCreate(Sender: TObject);
begin
	Application.OnHint := ShowHint;
   image1.Picture.LoadFromFile('C:\Documents and Settings\Albert\Desktop\SisCom\logotipo.bmp');
end;

procedure TF_Menu.SpeedButton11Click(Sender: TObject);
begin
	Close;
end;

procedure TF_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if Application.MessageBox('Deseja Realmente Sair?','Sair do Sistema',MB_YesNo + MB_IconQuestion) <> IdYes then
   	Application.Run;
end;

procedure TF_Menu.SpeedButton2Click(Sender: TObject);
begin
	Application.CreateForm(TF_Unidades,F_Unidades);
   F_Unidades.ShowModal;
end;

procedure TF_Menu.SpeedButton1Click(Sender: TObject);
begin
	F_Dados.Q_NivelAcesso.Active := False;
 	F_Dados.Q_NivelAcesso.Sql.Clear;
 	F_Dados.Q_NivelAcesso.Sql.Add('SELECT * FROM NIVELACESSO WHERE CODFUNC='+#39+Label4.Caption+#39);
 	F_Dados.Q_NivelAcesso.Sql.Add(' AND CODMODULO='+#39+IntToStr(Produtos1.Tag)+#39);
  	F_Dados.Q_NivelAcesso.Active := True;
	if F_Dados.Q_NivelAcesso.FieldByName('CodFunc').AsString <> '' then begin
		Application.CreateForm(TF_Produtos,F_Produtos);
	   F_Produtos.ShowModal;
   end
   else
		Application.MessageBox('Você Não Tem Acesso ao Módulo!','Sistema de Segurança',MB_OK + MB_IconError)
end;

procedure TF_Menu.SpeedButton3Click(Sender: TObject);
begin
	Application.CreateForm(TF_Funcionarios,F_Funcionarios);
   F_Funcionarios.ShowModal;
end;

procedure TF_Menu.DefinirNvelAcesso1Click(Sender: TObject);
begin
	Application.CreateForm(TF_NivelAcesso,F_NivelAcesso);
   F_NivelAcesso.ShowModal;
end;

procedure TF_Menu.Bancos1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Bancos,F_Bancos);
   F_Bancos.ShowModal;
end;

procedure TF_Menu.ContasaPagar1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Pagamentos,F_Pagamentos);
   F_Pagamentos.ShowModal;
end;

procedure TF_Menu.ContasaReceber1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Recebimentos,F_Recebimentos);
   F_Recebimentos.ShowModal;
end;

procedure TF_Menu.Requisio1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Requisicao,F_Requisicao);
   F_Requisicao.ShowModal;
end;

procedure TF_Menu.Cotao1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Cotacao,F_Cotacao);
   F_Cotacao.ShowModal;
end;

procedure TF_Menu.ConfirmaCotao1Click(Sender: TObject);
begin
	Application.CreateForm(TF_ConfCotacao,F_ConfCotacao);
   F_ConfCotacao.ShowModal;
end;

procedure TF_Menu.Pedido1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Pedido,F_Pedido);
   F_Pedido.ShowModal;
end;

procedure TF_Menu.Vendas1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Vendas,F_Vendas);
   F_Vendas.ShowModal;
end;

procedure TF_Menu.EntradadeNF1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Entradas,F_Entradas);
   F_Entradas.ShowModal;
end;

procedure TF_Menu.AtualizaodePreos1Click(Sender: TObject);
begin
	Application.CreateForm(TF_Ajuste,F_Ajuste);
   F_Ajuste.ShowModal;
end;

procedure TF_Menu.Sair2Click(Sender: TObject);
begin
  f_menu.Close;
end;

end.
