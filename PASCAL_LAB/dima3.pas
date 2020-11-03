Program dima3;
uses crt;
var i, j, n : integer;
    a : array [1..100,1..100] of integer;
    b : array [1..100] of integer;
begin
  clrscr;
  writeln('Vvedite razmer matrizi: ');
  readln(n);
  
  for i:=1 to n do begin
    writeln();
    for j:=1 to n do 
      begin
        write('a[',i,']=');
        readln(a[j,i]);
      end;
  end;
  
  for i:=1 to n do 
    begin
      b[i]:=0;
      writeln;
     
      for j:=1 to n do 
        begin
          write(a[j,i],' ');
          if a[i,j] mod 2 = 0 then 
            b[i]:=b[i]+1;
        end;
    end;
    
  writeln;
  writeln('Vector b: ');
  for i:=1 to n do 
    write(b[i],' ');
  
readln; 
end.