program np24;
uses crt;
var
  a:array[1..50,1..50] of integer;
  i,n,j,buf:integer;
begin
  clrscr;
  writeln('Введите размерность массива n');
  read(n);
  for i:=1 to n do
    begin
      writeln;
      for j:=1 to n do
        begin
          write('a[',i,',',j,']=');
          read(a[i,j]);
        end;
    end;
  writeln;  
  writeln('Вектор a:');
  for i:=1 to n do
    begin
      writeln;
      for j:=1 to n do
        begin
          write(a[i,j]:4);
        end;
    end;
  writeln;
  writeln;
  for j:=1 to N-1 do
    for i:=1 to N-j do
       if a[i,1] > a[i+1,1] then
         begin
           buf:=a[i,1];
           a[i,1]:=a[i+1,1];
           a[i+1,1]:=buf;
         end;
   writeln('Вектор a(после изменения):');
   for i:=1 to n do
     begin
       writeln;
       for j:=1 to n do
         begin
           write(a[i,j]:4);
         end;
     end;
   repeat until keypressed;
end.