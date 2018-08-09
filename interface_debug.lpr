program interface_debug;

type
  ISomeInterface = interface
    ['{587D89D5-38B0-46F4-B418-AD40C8778D5F}']
    procedure Method;
  end;

  { TSomeObject }

  TSomeObject = class(TInterfacedObject, ISomeInterface)
    procedure Method;
  end;

{ TSomeObject }

procedure TSomeObject.Method;
begin
  WriteLn('TSomeObject.Method');
end;

var
  v: ISomeInterface;
begin
  v := TSomeObject.Create;
  v.Method;
end.

