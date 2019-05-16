unit U_PegaProdReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TF_PegaProdReq = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PegaProdReq: TF_PegaProdReq;

implementation

uses U_DMADO, U_Requisica;

{$R *.dfm}

procedure TF_PegaProdReq.Button2Click(Sender: TObject);
begin
	close;
end;

procedure TF_PegaProdReq.Button1Click(Sender: TObject);
begin
	F_DMADO.Q_Produto.Active := False;
   F_DMADO.Q_Produto.SQL.Clear;
   F_DMADO.Q_Produto.SQL.Add('select * from PRODUTO where DESCRICAO ');
   F_DMADO.Q_Produto.SQL.Add('like '+#39+edit1.text+'%'+#39);
   F_DMADO.Q_Produto.SQL.Add(' order by DESCRICAO');
	F_DMADO.Q_Produto.Active := True;
end;

procedure TF_PegaProdReq.Button3Click(Sender: TObject);
begin
	F_DMADO.Q_DRequisicao.Append;
   F_DMADO.Q_DRequisicao.FieldByName('CODPROD').AsString := F_DMADO.Q_Produto.FieldByName('CODIGO').AsString;
   F_DMADO.Q_DRequisicao.FieldByName('VLRUNITARIO').AsString := F_DMADO.Q_Produto.FieldByName('VLRVENDA').AsString;
   close;
   F_Requisicao.DBGrid1.SetFocus;
end;

procedure TF_PegaProdReq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
	if key = #13 then
   	Button3.Click;
end;

procedure TF_PegaProdReq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Release;
end;

end.
