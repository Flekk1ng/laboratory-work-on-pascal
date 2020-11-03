program np_uvp2_1;
{Путинцев Никита
Вариант 12}
uses crt;
var 
 a,pr:LongInt; 
 b: Array[1..10] of 0..9; 
 i,k:integer;
 fl:boolean;
begin 
 clrscr;
 pr:=1;
 Write('Введите число:'); 
 Read(a); 
 k:=0;
 while a>=1 do
   begin 
     k:=k+1; 
     b[k]:=a mod 10;
     a:=a div 10;
   end;
 write('Ваше число:');
 for i:=k downto 1 do
   begin
     write(b[i]);
     if b[i] mod 2 = 0 then
       fl:=true;
   end;
 if fl = false then 
   begin
     writeln('Произведение четных цифр в числе:0');
     exit;
   end;
 writeln;
 for i:=1 to k do
   if b[i] mod 2 =0
     then pr:=pr*b[i];
WriteLn('Произведение четных цифр в числе:',pr);
repeat until keyPressed;
end.
