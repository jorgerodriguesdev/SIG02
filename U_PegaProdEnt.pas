unit U_PegaProdEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TF_PegaProdEnt = class(TForm)
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
  F_PegaProdEnt: TF_PegaProdEnt;

implementation

uses U_DMIBX, U_Entradas;

{$R *.dfm}

procedure TF_PegaProdEnt.Button2Click(Sender: TObject);
begin
	close;
end;

procedure TF_PegaProdEnt.Button1Click(Sender: TObject);
begin
	F_DMIBX.Q_Produto.Active := False;
   F_DMIBX.Q_Produto.SelectSQL.Clear;
   F_DMIBX.Q_Produto.SelectSQL.Add('select * from PRODUTO where DESCRICAO ');
   F_DMIBX.Q_Produto.SelectSQL.Add('like '+#39+edit1.text+'%'+#39);
   F_DMIBX.Q_Produto.SelectSQL.Add(' order by DESCRICAO');
	F_DMIBX.Q_Produto.Active := True;
end;

procedure TF_PegaProdEnt.Button3Click(Sender: TObject);
begin
	F_DMIBX.Q_DNFE.Append;
   F_DMIBX.Q_DNFECODPRO.AsString := F_DMIBX.Q_ProdutoCodigo.AsString;
   F_DMIBX.Q_DNFENUMNOTA.ASString := F_Entradas.Edit1.Text;
   F_DMIBX.Q_DNFEVLRUNITARIO.AsString := F_DMIBX.Q_ProdutoVlrVenda.AsString;
   close;
   F_Entradas.DBGrid1.SetFocus;
end;

procedure TF_PegaProdEnt.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
	if key = #13 then
   	Button3.Click;
end;

procedure TF_PegaProdEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Release;
end;

end.
