program np34_2;
uses crt;
type 
  mas=array[1..100,1..100] of integer;
var 
  a:mas;
  n:integer;
function max(m:mas; n:integer):integer;
var i,j,ma:integer;
begin
  ma:=m[1,1];
  for i:=1 to n do
    for j:=1 to n do
      if m[i,j]>ma then ma:=m[i,j];
  max:=ma;
end;
function vvod(m:mas; n:integer):mas;
var i,j:integer;
begin
  for i:=1 to n do
    begin
    for j:=1 to n do
      begin
        write('a[',i,',',j,']=');
        readln(m[i,j]);
      end;
    writeln;
    end;
  vvod:=m;
end;

begin
  write('Vvedite razmer n:');
  readln(n);
  a:=vvod(a,n);
  writeln('Max el in massiv =',max(a,n));
end.