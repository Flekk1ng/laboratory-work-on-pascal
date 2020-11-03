Program np25;
uses crt;
var 
  a:array[1..20,1..20] of integer;
  i,j,k,n,max:integer;
begin
  clrscr;
  readln(n);
  randomize;
for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          a[i,j]:=random(50)-25;
          write(a[i,j]:4);
        end;
      writeln;
    end;
 
  for i:=1 to n do
    for j:=1 to n do
      if ((j<i)and(j<n-i+1)) or ((j>i)and(i>n-j+1)) then
        begin
          a[i,j]:=0;
        end;
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          write(a[i,j]:4);
        end;
      writeln;
    end;
  
  
  
  
  
end.