program lab2uvp;
uses crt;
var n, d,k,i: Integer;
    a:array[1..20] of integer;
begin
  writeln('Введите число');
  Read(n);
  d := 0; 
  while n >= 1 do 
    begin
      k:=k+1;
      a[k+1]:=N mod 10;
      N:=N div 10;
    end;
    a[1]:=a[k+1];
    writeln('Ваше число:');
  for i:=k downto 1 do 
    Write(a[i]);
end.