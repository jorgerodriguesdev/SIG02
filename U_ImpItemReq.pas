unit U_ImpItemReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TF_ImpItemReq = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ImpItemReq: TF_ImpItemReq;

implementation

uses U_DMADO;

{$R *.dfm}

procedure TF_ImpItemReq.FormCreate(Sender: TObject);
begin
	F_DMADO.Q_ImportaReq.Active := False;
	F_DMADO.Q_ImportaReq.Active := True;
end;

procedure TF_ImpItemReq.BitBtn2Click(Sender: TObject);
begin
	close;
end;

procedure TF_ImpItemReq.DBGrid1CellClick(Column: TColumn);
begin
	if Column.ID = 0 then begin
   	if F_DMADO.Q_ImportaReqTICK.AsString = 'X' then begin
	   	F_DMADO.Q_ImportaReq.Edit;
	   	F_DMADO.Q_ImportaReqTICK.AsString := '';
			F_DMADO.Q_ImportaReq.Post;
      end
      else begin
	   	F_DMADO.Q_ImportaReq.Edit;
	   	F_DMADO.Q_ImportaReqTICK.AsString := 'X';
			F_DMADO.Q_ImportaReq.Post;
      end;
   end;
end;

procedure TF_ImpItemReq.BitBtn1Click(Sender: TObject);
begin
	F_DMADO.Q_ImportaReq.DisableControls;
	F_DMADO.Q_ImportaReq.First;
   while not F_DMADO.Q_ImportaReq.Eof do begin
   	if F_DMADO.Q_ImportaReqTICK.AsString = 'X' then begin
      	F_DMADO.Q_DCotacao.Append;
         F_DMADO.Q_DCotacaoCODPRODREQ.AsString := F_DMADO.Q_ImportaReqCODPROD.AsString;
         F_DMADO.Q_DCotacaoCODREQ.AsString := F_DMADO.Q_ImportaReqCODREQ.AsString;
         F_DMADO.Q_DCotacaoQTDE.AsInteger := F_DMADO.Q_ImportaReqQTDE.AsInteger;
         F_DMADO.Q_DCotacao.Post;
         F_DMADO.Q_ImportaReq.Next;
      end
      else
         F_DMADO.Q_ImportaReq.Next;
   end;
	F_DMADO.Q_ImportaReq.EnableControls;
   close;
end;

end.
