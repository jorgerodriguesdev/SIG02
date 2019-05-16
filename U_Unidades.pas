unit U_Unidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TF_Unidades = class(TForm)
    PanTitulo: TPanel;
    PanGrid: TPanel;
    PanBotoes: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Unidades: TF_Unidades;

implementation

Uses U_Dados;

{$R *.dfm}

procedure TF_Unidades.BitBtn1Click(Sender: TObject);
begin
	F_Dados.T_Unidade.Append;
   PanTitulo.Caption := 'Cadastro das Unidades - Inserindo';
   DBGrid1.SetFocus;
   DBGrid1.SelectedIndex := 1;
end;

procedure TF_Unidades.BitBtn2Click(Sender: TObject);
begin
   F_Dados.T_Unidade.Edit;
   PanTitulo.Caption := 'Cadastro das Unidades - Alterando';   
end;

procedure TF_Unidades.BitBtn3Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Excluir?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
   	F_Dados.T_Unidade.Delete;
end;

procedure TF_Unidades.BitBtn5Click(Sender: TObject);
begin
	Close;
end;

procedure TF_Unidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Release;
end;

procedure TF_Unidades.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
	key := upcase(key);
end;

procedure TF_Unidades.FormCreate(Sender: TObject);
begin
	F_Dados.T_Unidade.Open;
end;

end.
