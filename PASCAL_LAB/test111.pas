uses crt;
const nmax=20;
var a:array[1..nmax,1..nmax] of integer;
    n,i,j:integer;
begin
clrscr;
randomize;
repeat
write('Размер матрицы до ',nmax,' n=');
readln(n);
until n in [1..nmax];
writeln('Исходная матрица:');
for i:=1 to n do
 begin
  for j:=1 to n do
   begin
    a[i,j]:=random(50)+1;
    write(a[i,j]:4);
   end;
  writeln;
 end;
writeln('Измененная матрица:');
for i:=1 to n do
 begin
  for j:=1 to n do
   begin
    if ((j<i)and(j<n-i+1)) or ((j>i)and(i>n-j+1)) then a[i,j]:=0;
    write(a[i,j]:4);
   end;
  writeln;
 end;
readln
end.