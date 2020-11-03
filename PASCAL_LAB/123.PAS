
Uses Crt;
Var
 x,y,f,g,fl:integer;
 Begin
Clrscr;
 writeln ('Введите значение x y');
 readln (x,y);
 writeln ('x=',x,' y=',y);
 Case x * y of

-Maxint..-1: begin
   writeln ('x * y ', x * y,'< 0');
   if (1+sqr(y)-x)=0 then fl:=1
   else 
     begin
  f:=round(ln(x*y)+1) div round(1+(y*y)-x);
  g:=round((x*x) - sqr(y) + 3*x) div round(sqrt(abs(2*sqr(x)+y)));
    end;
  end;
  
0  : begin
   writeln ('x * y', x * y,'= 0');
   if (1-sqr(x)+y*y*y) = 0 then fl:=2
   else 
     begin
   f:=round(x - y) div round(1 - x * x + y * y *y);
   g:=round(sin(sqr(x))+sqr(y-x)) div round(25 + ln(x*y));
   end;
   end;
   
  1..Maxint : begin
     writeln ('x * y =',x+y,'> 0');
     if (sqrt(abs(sin(x))+x*y))<0 then fl:=3
     else begin
     f:=round(sqrt(abs(sin(x)+x*y)));
     g:=(x*x*x+sqr(y));
     end;
    end
  end;
  case fl of
    0:writeln('f=',f,' g=',g);
    1:writeln('Деление на ноль');
    2:writeln('Деление на ноль');
    3:writeln('Отрицательное число под корнем');    
    end;
 readln;
 End.
