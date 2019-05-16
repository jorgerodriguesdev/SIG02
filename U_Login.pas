unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, inifiles;

type
  TF_Login = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

Uses U_Dados, U_Menu, U_DMExpress, U_DMADO;

{$R *.dfm}

procedure TF_Login.BitBtn1Click(Sender: TObject);
var
	ini:TIniFile;
begin
	ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'bd.ini');
	F_Dados.Z_SisCom.Connected := False;
   F_DMExpress.Conexao.Connected := False;
   if RadioGroup1.ItemIndex = 0 then begin
   	//zeos
		F_Dados.Z_SisCom.Hostname := ini.ReadString('MYZEOS','HOST',''); //'10.0.0.1';
    	F_Dados.Z_SisCom.Database := 'siscom';
   	F_Dados.Z_SisCom.Protocol := 'mysql-4.0';
      F_Menu.Label3.Caption := 'MySQL';
      //dbexpress
      F_DMExpress.Conexao.ConnectionName := 'MySQLConnection';
      F_DMExpress.Conexao.DriverName := 'MySQL';
      F_DMExpress.Conexao.GetDriverFunc := 'getSQLDriverMYSQL';
      F_DMExpress.Conexao.LibraryName := 'dbexpmysql.dll';
      F_DMExpress.Conexao.VendorLib := 'libmysql.dll';
      F_DMExpress.Conexao.Params.Values['DriverName'] := 'MySQL';
      F_DMExpress.Conexao.Params.Values['HostName'] := '10.0.0.1';
      F_DMExpress.Conexao.Params.Values['DataBase'] := 'SisCom';
      F_DMExpress.Conexao.Params.Values['User_Name'] := 'root';
      F_DMExpress.Conexao.Params.Values['Password'] := '';
      //ado
//      F_DMADO.Conexao.ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=MySisCom';
   end;
   if RadioGroup1.ItemIndex = 1 then begin
   	//zeos
		F_Dados.Z_SisCom.Hostname := ini.ReadString('FBZEOS','HOST','');//'10.0.0.1';
    	F_Dados.Z_SisCom.Database := ini.ReadString('FBZEOS','PATH','');//'\Documents and Settings\Albert\Desktop\SisCom\dados\SISCOM.FDB';
   	F_Dados.Z_SisCom.Protocol := 'firebird-1.5';
   	F_Dados.Z_SisCom.User := 'SYSDBA';
   	F_Dados.Z_SisCom.Password := 'masterkey';
      F_Menu.Label3.Caption := 'Firebird';
      //dbexpress
      F_DMExpress.Conexao.ConnectionName := 'IBConnection';
      F_DMExpress.Conexao.DriverName := 'Interbase';
      F_DMExpress.Conexao.GetDriverFunc := 'getSQLDriverINTERBASE';
      F_DMExpress.Conexao.LibraryName := 'dbexpint.dll';
      F_DMExpress.Conexao.VendorLib := 'gds32.dll';
      F_DMExpress.Conexao.Params.Values['DriverName'] := 'Interbase';
      F_DMExpress.Conexao.Params.Values['DataBase'] := '10.0.0.1:c:\Documents and Settings\Albert\Desktop\SisCom\dados\SISCOM.FDB';
      F_DMExpress.Conexao.Params.Values['User_Name'] := 'SYSDBA';
      F_DMExpress.Conexao.Params.Values['Password'] := 'masterkey';
      F_DMExpress.Conexao.Params.Values['SQLDialect'] := '3';
      //ado
      //F_DMADO.Conexao.ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;User ID=SYSDBA;Data Source=FBSisCom';
   end;
	F_Dados.Z_SisCom.Connected := True;
   F_DMExpress.Conexao.Connected := True;
//   F_DMADO.Conexao.Connected := True;
   //Verificar a senha do usuário
	F_Dados.Q_ConsFunc.Active := False;
 	F_Dados.Q_ConsFunc.Sql.Clear;
 	F_Dados.Q_ConsFunc.Sql.Add('SELECT * FROM FUNCIONARIO WHERE LOGIN='+#39+Edit1.Text+#39);
 	F_Dados.Q_ConsFunc.Sql.Add(' AND SENHA='+#39+Edit2.Text+#39);
  	F_Dados.Q_ConsFunc.Active := True;
   //
   if F_Dados.Q_ConsFunc.FieldByName('LOGIN').AsString <> '' then begin
      F_Menu.LinhaStatus.Panels[1].Text := ' Usuário: ' + F_Dados.Q_ConsFunc.FieldByName('NOME').AsString;;
      F_Menu.Label4.Caption := F_Dados.Q_ConsFunc.FieldByName('CODIGO').AsString;
      F_Menu.Label5.Caption := F_Dados.Q_ConsFunc.FieldByName('NOME').AsString;;
//		F_Menu.ShowModal;
   end
   else begin
      ShowMessage('Login ou Senha Incorretos');
   	Application.Terminate;
   end;
   Close;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Release;
end;

end.
