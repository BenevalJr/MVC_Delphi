unit FPrincipalView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConexao, Vcl.StdCtrls, uSistemaControl, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  VConexao: TConexao;
begin
  VConexao := TConexao.Create;
  VConexao.GetConn.Connected := True;
  try
    if VConexao.GetConn().Connected then
      ShowMessage('Conectado.');
  finally
    FreeAndNil(VConexao);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  TSistemaControl.GetInstance().SetEmpresa(1);
  TSistemaControl.GetInstance().CarregarEmpresa();

  StatusBar1.Panels[1].Text := 'Empresa: ' + TSistemaControl.GetInstance().Empresa.Codigo.ToString() + ' ' +
    TSistemaControl.GetInstance().Empresa.RSocial;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  TSistemaControl.GetInstance().Destroy();
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
