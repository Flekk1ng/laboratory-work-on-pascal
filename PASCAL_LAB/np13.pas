Program np13;
{Путинцев Никита}
{Вариант 12}
const y=2;
var xn,xk,h,x,f,min:real;
begin
write('Введите начало интервала xn: ');
readln(xn);
write('Введите конец интервала xk: ');
readln(xk);
write('Введите шаг h');
readln(h);
writeln('---------------');
writeln('|  x  |  f(x) |');
writeln('---------------');
x:=xn;
while (x<=xk) do 
  begin
    if x<1 then
      begin
        min:=(2*x)-3;
        if (sqr(x)-1)<min then
          min:=(sqr(x)-1); 
          f:=(5/(y*sqr(y)+4))-min;
      end
      else
        if (x>=1) and (4>=x) then
          f:=((ln(abs(x))-pi))
        else 
          f:=sqrt(1+x+sqr(x));
   writeln('|',x:5:2,'|',f:7:3,'|');
   x:=x+h;
  end;
writeln('---------------');
end.