unit U_NivelAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, Buttons;

type
  TF_NivelAcesso = class(TForm)
    TreeView1: TTreeView;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_NivelAcesso: TF_NivelAcesso;

implementation

uses U_Dados;

{$R *.dfm}

procedure TF_NivelAcesso.BitBtn5Click(Sender: TObject);
begin
	close;
end;

procedure TF_NivelAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	release;
end;

procedure TF_NivelAcesso.BitBtn2Click(Sender: TObject);
begin
	F_Dados.Q_NivelAcesso.Append;
   F_Dados.Q_NivelAcesso.FieldByName('MODULO').AsString := TreeView1.Selected.Text;
   F_Dados.Q_NivelAcesso.FieldByName('CODFUNC').AsString := F_Dados.Q_ConsFunc.FieldByName('CODIGO').AsString;   
   F_Dados.Q_NivelAcesso.FieldByName('CODMODULO').AsString := Copy(TreeView1.Selected.Text,1,2);
   F_Dados.Q_NivelAcesso.Post;
end;

procedure TF_NivelAcesso.FormCreate(Sender: TObject);
begin
  	F_Dados.Q_NivelAcesso.Active := True;
   //
	F_Dados.Q_ConsFunc.Active := False;
 	F_Dados.Q_ConsFunc.Sql.Clear;
 	F_Dados.Q_ConsFunc.Sql.Add('SELECT * FROM FUNCIONARIO ORDER BY CODIGO');
  	F_Dados.Q_ConsFunc.Active := True;
end;

procedure TF_NivelAcesso.BitBtn1Click(Sender: TObject);
begin
	if Application.MessageBox('Deseja Realmente Remover o Nível de Acesso do Módulo Selecionado?','Pergunta do Sistema',MB_YesNo + MB_IconQuestion) = idYes then
		F_Dados.Q_NivelAcesso.Delete;
end;

end.
