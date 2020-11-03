program np22;
uses crt;
var
  a:array[1..50] of integer;
  i,n,c,d,i_per_chet, i_min, min, t, s, i_s:integer;
  fl_t, fl_s:boolean;
begin
  writeln('n');
  read(n);

  for i:=1 to n do
    begin
      write('a[',i,']=');
      read(a[i]);
    end;
  writeln('Введите t:');
  read(t);
  repeat 
    for i:=1 to n do
      if a[i]<t then 
        begin
          fl_t:=true;
          break;
        end;
    if fl_t = false then
      begin
        writeln('Введите t еще раз');
        read(t);
      end;
  until (fl_t=true);
  
  writeln('Введите s:');
  read(s);
  repeat 
    for i:=1 to n do
      if a[i]=s then
        begin
          i_s:=i;
          fl_s:=true;
          break;
        end;
    if fl_s = false then
         begin
           writeln('Введите s еще раз:');
           read(s);
         end;
   until (fl_s=true);
   
   for i:=i_s+1 to n do
       if a[i]<t then
         begin
           min:=a[i];
           i_min:=i;
         end;
         
    for i:=i_s+1 to n do 
      if (a[i]<t) and (a[i]<min) then
        begin
          min:=a[i];
          i_min:=i;
        end;
        
    for i:=i_s+1 to n do
      if a[i]=min then 
        begin
          min:=a[i];
          i_min:=i;
        end;
        
    writeln('Вектор a:');
    for i:=1 to n do
        write(a[i],' ');
    writeln;
    if i_min = 0 then
      writeln('Такого элемента не существует')
    else 
      begin
        writeln('Последний минимальный элемент, который меньше t и стоит после элемента равного s:');
        writeln('MIN:',min);
        writeln('INDEX MIN:',i_min);
      end;
     
  readln;
end.
