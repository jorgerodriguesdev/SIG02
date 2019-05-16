unit UR_Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFR_Produtos = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRExpr1: TQRExpr;
    QRShape2: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_Produtos: TFR_Produtos;

implementation

uses U_Dados;

{$R *.dfm}

procedure TFR_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Release;
end;

end.
