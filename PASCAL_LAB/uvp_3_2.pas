Program uvp_3_2;
{Putincev Nikita
Variant 12}
uses crt;
type
  mas=array[1..10,1..10] of integer;
var
  a,b:mas;
  n,m:integer;
{-------------------------------}
procedure input(var ma:mas);
var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      begin
        {write('a[',i,',',j,']=');
        readln(ma[i,j]);}
        ma[i,j]:=random(15)-5;
      end;
end;
{-------------------------------}
procedure output(ma:mas);
var i,j:integer;
begin
  writeln('matrix:');
  for i:=1 to n do
    begin
    for j:=1 to m do
      write(ma[i,j]:3); 
    writeln;
    end;
end;

{-------------------------------}
function sum(m:mas;j:integer):integer;
var su,i:integer;
begin
  su:=0;
  for i:=1 to n do 
    if m[i,j]<0 then
      begin
      su:=su+m[i,j];
      end;
  sum:=su;
end;
{-------------------------------}
procedure prov(ma:mas);
var i,j:integer;
begin
  for i:=1 to m do
    if sum(ma,i)=0 then exit;
end;
{-------------------------------}
procedure sort(var ma:mas);
var k,i,j,i_min,min_sum:integer;
begin
  for i:=1 to m do
    begin
      min_sum:=sum(ma,i);
      i_min:=i;
      for j:=1 to m do
        if sum(ma,j)<min_sum then
          begin
            min_sum:=sum(ma,j);
            i_min:=j;
          end;
      for k:=1 to n do
        begin
          B[k,i]:=ma[k,i_min];
          ma[k,i_min]:=99;
        end;
    end;
end;
{-------------------------------}
procedure obr(var ma:mas);
var i,j,max:integer;
begin
  max:=ma[1,1];
  for i:=1 to n do
    for j:=1 to m do
      if a[i,j]>max then
        max:=a[i,j];
  if (max>=4) and (max<=15) then
      sort(ma)
  else
    begin
      writeln('Ne v diapazone!');
    end;
end;
{-------------------------------}
begin
  clrscr;
  writeln('vvod n,m:');
  readln(n,m);
  input(a);
  prov(a);
  output(a);
  obr(a);
  output(b);
end.