unit uSistemaControl;

interface

uses
  uConexao, System.SysUtils, uEmpresaModel;

type
  TSistemaControl = class
  private
    FConexao: TConexao;
    FEmpresa: TEmpresa;

    class var FInstance: TSistemaControl;

  public
    constructor Create;
    destructor Destroy; override;

    class function GetInstance: TSistemaControl;

    property Conexao: TConexao read FConexao write FConexao;
    property Empresa: TEmpresa read FEmpresa write FEmpresa;
  end;

implementation

{ TSistemaControl }

constructor TSistemaControl.Create;
begin
  FConexao := TConexao.Create;
  FEmpresa := TEmpresa.Create(1);
end;

destructor TSistemaControl.Destroy;
begin
  FreeAndNil(FEmpresa);
  FreeAndNil(FConexao);

  inherited;
end;

class function TSistemaControl.GetInstance: TSistemaControl;
begin
  if not Assigned(Self.FInstance) then
  begin
    Self.FInstance := TSistemaControl.Create();
  end;

  Result := Self.FInstance;
end;

end.