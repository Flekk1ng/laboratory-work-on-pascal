program dima2;
uses crt;
var
  a:array[1..50] of integer;
  i,n,c,d,i_per_chet, i_max, max:integer;
begin
  clrscr;
  writeln('n');
  read(n);
  for i:=1 to n do
    begin
      write('a[',i,']=');
      read(a[i]);
    end;

  for i:=1 to n do
    if a[i] mod 2 = 0 then
      begin
        i_per_chet:=i;
        break;
      end;
  if (i_per_chet = 1) or (i_per_chet = 2) or (i_per_chet = 0)then
    begin
      writeln('Perviy chetniy element v nachale massiva, libo ego net ,error');
      exit;
    end;
  writeln('Vvedite c i d: ');
  read(c,d);
  repeat
  if (c >= d) or (d >= i_per_chet) then
    begin
      writeln('Ne pravilno vvedeni c i d, poprobuyte esche raz: ');
      read(c, d);
    end
  else
    break;
  until false;

  max:=a[c];
  for i:=c to d do
    if max<=a[i] then 
      begin
        max:=a[i];
        i_max:=i;
      end;
  writeln('Index maximalnogo elementa=',i_max);
  readln;
end.
