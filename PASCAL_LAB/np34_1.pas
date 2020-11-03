program np34_1;
uses crt;
var n,m:integer;
  a:array[1..100,1..100] of integer;
procedure input;
var i,j:integer;
begin
  write('vvedite n i m:');
  readln(n,m);
  for i:=1 to n do
    for j:=1 to m do
      begin
        write('a[',i,',',j,']=');
        readln(a[i,j]);
      end;
end;
procedure obr;
var i,j,k,max,min:integer;
begin
  for i:=1 to n do
    begin
      max:=a[i,1];
      min:=a[i,1];
      for j:=1 to m do
        begin
          if a[i,j]<min then min:=a[i,j];
          if a[i,j]>max then max:=a[i,j];
        end;
      for k:=1 to m do
            if (a[i,k]<>min) and (a[i,k]<>max) then
              a[i,k]:=0;
    end;
end;
procedure output;
var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to m do
        write(a[i,j]:4);
      writeln;
    end;
        
end;
begin
input;
obr;
output;  
end.
