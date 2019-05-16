unit U_Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, DBCtrls, biblio;

type
  TF_Produtos = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    BitBtn6: TBitBtn;
    EditProcura: TEdit;
    Label9: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Bevel2: TBevel;
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
  F_Produtos: TF_Produtos;
  idCol,confira : Integer;
  nCol : String;

implementation

uses U_Dados, U_Menu, UR_Produtos;

{$R *.dfm}

procedure TF_Produtos.pinta;
var
	i : integer;
begin
	for i := 0 to DbGrid1.Columns.Count - 1 do
   	DbGrid1.Columns.Items[i].Color := clWindow;
   DbGrid1.Columns.Items[idCol].Color := clInfoBk;
end;

procedure TF_Produtos.procura;
begin
	If EditProcura.Text <> '' then begin
   	if ncol = '' then
      	Application.MessageBox('Primeiro Ordene uma Coluna para Realizar a Consulta','Clique em um Título',MB_OK + MB_IconError)
      else begin
      	F_Dados.Q_Produto.Active := False;
         F_Dados.Q_Produto.SQL.Clear;
         F_Dados.Q_Produto.SQL.Add('SELECT * FROM PRODUTO WHERE '+nCol+' LIKE '+#39+EditProcura.Text+'%'+#39);
         F_Dados.Q_Produto.SQL.Add('order by '+nCol);
      	F_Dados.Q_Produto.Active := True;
      end;
   end;
end;

procedure TF_Produtos.BitBtn5Click(Sender: TObject);
begin
	close;
end;

procedure TF_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Release;
end;

procedure TF_Produtos.BitBtn1Click(Sender: TObject);
begin
	F_Dados.Q_Produto.Append;
   confira := 1;
   PanTitulo.Caption := 'Cadastro de Produtos - Inserindo';
   PanGrid.SendToBack;
end;

procedure TF_Produtos.BitBtn2Click(Sender: TObject);
begin
	F_Dados.Q_Produto.Edit;
   confira := 2;
   PanTitulo.Caption := 'Cadastro de Produtos - Alterando';
   PanGrid.SendToBack;
end;

procedure TF_Produtos.BitBtn3Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
   	F_Dados.Q_Produto.Delete;
end;

procedure TF_Produtos.BitBtn6Click(Sender: TObject);
begin
   PanTitulo.Caption := 'Cadastro de Produtos - Consultando';
   PanGrid.SendToBack;
end;

procedure TF_Produtos.BitBtn7Click(Sender: TObject);
begin
	F_Dados.Q_Produto.Cancel;
   PanGrid.BringToFront;
end;

procedure TF_Produtos.BitBtn8Click(Sender: TObject);
begin
	if confira = 1 then
		F_Dados.Q_Produto.FieldByName('Auditoria').AsString := F_Menu.Label5.Caption + ' - ' + DateTimeToStr(Now) + ' - INCLUSAO';
	if confira = 2 then
		F_Dados.Q_Produto.FieldByName('Auditoria').AsString := F_Menu.Label5.Caption + ' - ' + DateTimeToStr(Now) + ' - ALTERACAO';
	F_Dados.Q_Produto.Post;
   PanGrid.BringToFront;
end;

procedure TF_Produtos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
	key := upcase(key);
end;

procedure TF_Produtos.DBGrid1TitleClick(Column: TColumn);
begin
	idCol := Column.ID;
   nCol := Column.FieldName;
   pinta;
   procura;
end;

procedure TF_Produtos.FormCreate(Sender: TObject);
begin
	ZConsulta(F_Dados.Q_Produto,'SELECT * FROM PRODUTO WHERE CODIGO=1');
end;

procedure TF_Produtos.SpeedButton1Click(Sender: TObject);
begin
	procura;
end;

procedure TF_Produtos.EditProcuraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = 113 then
   	procura;
end;

procedure TF_Produtos.BitBtn4Click(Sender: TObject);
begin
	Application.CreateForm(TFR_Produtos,FR_Produtos);
   FR_Produtos.QuickRep1.Preview;
end;

end.
