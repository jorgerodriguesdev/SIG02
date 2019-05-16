unit U_ImpItemCot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TF_ImpItemCot = class(TForm)
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
  F_ImpItemCot: TF_ImpItemCot;

implementation

uses U_DMADO, U_Pedido;

{$R *.dfm}

procedure TF_ImpItemCot.FormCreate(Sender: TObject);
begin
	F_DMADO.Q_ImportaCot.Active := False;
   F_DMADO.Q_ImportaCot.Parameters.ParamByName('CODCOT').Value := StrToInt(F_Pedido.Edit5.Text);
	F_DMADO.Q_ImportaCot.Active := True;
end;

procedure TF_ImpItemCot.BitBtn2Click(Sender: TObject);
begin
	close;
end;

procedure TF_ImpItemCot.DBGrid1CellClick(Column: TColumn);
begin
	if Column.ID = 0 then begin
   	if F_DMADO.Q_ImportaCotTICK.AsString = 'X' then begin
	   	F_DMADO.Q_ImportaCot.Edit;
	   	F_DMADO.Q_ImportaCotTICK.AsString := '';
			F_DMADO.Q_ImportaCot.Post;
      end
      else begin
	   	F_DMADO.Q_ImportaCot.Edit;
	   	F_DMADO.Q_ImportaCotTICK.AsString := 'X';
			F_DMADO.Q_ImportaCot.Post;
      end;
   end;
end;

procedure TF_ImpItemCot.BitBtn1Click(Sender: TObject);
begin
	F_DMADO.Q_ImportaCot.DisableControls;
	F_DMADO.Q_ImportaCot.First;
   while not F_DMADO.Q_ImportaCot.Eof do begin
   	if F_DMADO.Q_ImportaCotTICK.AsString = 'X' then begin
      	F_DMADO.Q_DPedido.Append;
         F_DMADO.Q_DPedidoCODPROD.AsString := F_DMADO.Q_ImportaCotCODPRODREQ.AsString;
         F_DMADO.Q_DPedidoCODREQ.AsString := F_DMADO.Q_ImportaCotCODREQ.AsString;
         F_DMADO.Q_DPedidoCODCOT.AsString := F_DMADO.Q_ImportaCotCODCOTA.AsString;
         F_DMADO.Q_DPedidoQTDE.AsInteger := F_DMADO.Q_ImportaCotQTDE.AsInteger;
         if F_Pedido.Radiobutton1.Checked = True then begin
	         F_DMADO.Q_DPedidoVLRUNITARIO.AsFloat := F_DMADO.Q_ImportaCotUNIT1.AsFloat;
	         F_DMADO.Q_DPedidoVLRTOTAL.AsFloat := F_DMADO.Q_ImportaCotTOTAL1.AsFloat;
         end;
         if F_Pedido.Radiobutton2.Checked = True then begin
	         F_DMADO.Q_DPedidoVLRUNITARIO.AsFloat := F_DMADO.Q_ImportaCotUNIT2.AsFloat;
	         F_DMADO.Q_DPedidoVLRTOTAL.AsFloat := F_DMADO.Q_ImportaCotTOTAL2.AsFloat;
         end;
         if F_Pedido.Radiobutton3.Checked = True then begin
	         F_DMADO.Q_DPedidoVLRUNITARIO.AsFloat := F_DMADO.Q_ImportaCotUNIT3.AsFloat;
	         F_DMADO.Q_DPedidoVLRTOTAL.AsFloat := F_DMADO.Q_ImportaCotTOTAL3.AsFloat;
         end;
         F_DMADO.Q_DPedido.Post;
         F_DMADO.Q_ImportaCot.Next;
      end
      else
         F_DMADO.Q_ImportaCot.Next;
   end;
	F_DMADO.Q_ImportaCot.EnableControls;
   close;
end;

end.
