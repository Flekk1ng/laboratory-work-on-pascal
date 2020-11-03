Program np23;
  uses crt;
var i, j, n : integer;
    a : array [1..50,1..50] of integer;
    b : array [1..50] of integer;
begin
  clrscr;
Writeln('Введите размерность квадратной матрицы ');
  readln(n);
  for i:=1 to n do
    begin
    writeln();
    for j:=1 to n do
      begin
        write('a[',i,j,']=');
        read(a[j,i]);
      end;
    end;
  for i:=1 to n do 
    begin
      b[i]:=0;
      for j:=1 to n do 
        if a[j,i] mod 2 <> 0 then b[i]:=b[i]+a[j,i];
    end;
  for i:=1 to n do write(b[i],' ');
  readln; 
end.