Program np33_2;
uses crt;
type 
  mas=array[1..100] of integer;
var i,j,n:integer;
    a:mas;
function min(m:mas):integer;
var i,mi,mi_i:integer;
begin
  mi:=m[1];
  mi_i:=1;
  for i:=1 to n do
    if a[i]<mi then 
      begin
        mi:=a[i];
        mi_i:=i;
      end;
  min:=mi_i;
end;
function max(m:mas):integer;
var i,ma,ma_i:integer;
begin
  ma:=m[1];
  ma_i:=1;
  for i:=1 to n do
      if a[i]>ma then 
        begin
          ma:=a[i];
          ma_i:=i;
        end;
  max:=ma_i;
end;
function find_count(m:mas;i1,i2:integer):integer;
var i,count,r:integer;
begin
  if i2 < i1 then 
    begin
      i2:=r;
      i2:=i1;
      i1:=r;
    end;
  for i:=i1+1 to i2-1 do
    if m[i]>0 then count:=count+1;
  find_count:=count;
end;
procedure input;
var i:integer;
begin
  for i:=1 to n do
  begin
    write('a[',i,']=');
    readln(a[i]);
  end;
end;
begin
  writeln('vvedite n:');
  read(n);
  input;
  writeln('Count=',find_count(a,min(a),max(a)));
end.