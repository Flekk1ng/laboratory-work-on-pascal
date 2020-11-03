Program np_uvp2_1;
{Путинцев Никита
Вариант 12}
uses crt;
var 
 a,pr,c,b:LongInt;
 i,k:integer;
 fl:boolean;
begin 
 clrscr;
 pr:=1;
 Write('Введите число:'); 
 Read(a); 
 k:=1;
 b:=0;
 while a>=1 do
   begin  
     c:=a mod 10;
     if c mod 2 = 0 then 
       begin
         fl:=true;
         pr:=pr*c;
       end;
     b:=b+c*k;
     k:=k*10;
     a:=a div 10;
   end;
 write('Ваше число:');
 writeln(b);
 if fl = false then 
   begin
     write('Произведение четных цифр в числе:0');
     exit;
   end;
Write('Произведение четных цифр в числе:',pr);
repeat until keyPressed;
end.
