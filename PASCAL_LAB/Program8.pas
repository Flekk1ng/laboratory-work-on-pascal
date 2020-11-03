program abd;
var
s,s1,s2:string;
a,i,k:longint;
begin
readln(s);
a:=length(s);
for i:=1 to a do
  begin 
  k:=i-1;
  s1:=copy(s,i,1);
  delete(s,i,1);
  insert(s1,s,k);
end;
writeln(s);
end.