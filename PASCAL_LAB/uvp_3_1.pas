Program uvp_3_1;
uses crt;
var a:array[1..100] of integer;
  n:integer;
procedure input();
var i:integer;
begin
  for i:=1 to n do
    begin
      write('a[',i,']=');
      readln(a[i]);
    end;
end;
procedure output;
var i:integer;
begin
  writeln('vector a:');
  for i:=1 to n do
    write(a[i],' '); 
end;
procedure sort;
var k,r,i,j:integer;
begin
  repeat
    k:=0;
    for j:=1 to 2 do
      begin
        i:=j;
        while (i<n) do
          begin
            if A[i]<A[i+1] then
              begin
                r:=a[i];
                a[i]:=a[i+1];
                a[i+1]:=r;
                k:=k+1;
              end;
              i:=i+2;
          end;
        end;
   until k=0;  
end;
procedure obr;
var i:integer;
begin
  for i:=1 to n do
    if a[i]<0 then 
      begin
       sort;
       break;
      end;
end;
begin
  clrscr;
  writeln('vvod n:');
  readln(n);
  input;
  obr;
  output;
end.