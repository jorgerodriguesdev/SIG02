unit U_Tela;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TF_Tela = class(TForm)
    pb: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Tela: TF_Tela;

implementation

{$R *.DFM}

procedure TF_Tela.FormActivate(Sender: TObject);
begin
  repaint;
  pb.Position := 10;  pb.Position := 20;
  sleep(500);
  pb.Position := 30;  pb.Position := 40;
  sleep(500);
  pb.Position := 50;  pb.Position := 60;
  sleep(500);
  pb.Position := 70;  pb.Position := 80;
  sleep(500);
  pb.Position := 90;  pb.Position := 100;
end;

end.
