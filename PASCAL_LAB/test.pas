Program uvp_1_1; {Вычисление суммы ряда}
{Путинцев Никита}
{Вариант 12}
  Uses Crt;
  Const eps=0.001;
  Var
        a,b,h,x,s,q,u,f :Real;
        k,n             :Integer;
Begin
  Clrscr;
  Write ('Введите отрезок [a,b]->'); 
  ReadLn (a,b);
  Write ('Введите значение k->'); 
  Readln (k);
  h:=(b-a)/k;
  x:=a;
WriteLn('       Таблица значений функции ');
WriteLn('┌────┬────────┬────────┬────────┬────┐');
WriteLn('│  x │   S    │    f   │    Q   │  n │');
WriteLn('├────┼────────┼────────┼────────┼────┤');
  While (x<=b) do
  begin
    s:=0;
    n:=1;
    u:=-sqr(2*x)/2;
    q:=u;
    While (abs(q)>eps) do
    begin
      s:=s+u;
      n:=n+1;
      u:=u*(-sqr(2*x))/((2*n-1)*(2*n));
      q:=u;
    end;
    f:=2*(cos(x)*cos(x)-1);
    WriteLn('│',x:4:2,'│',s:8:4,'│',f:8:4,'│',
            q:8:4,'│',n:3,'│');
    x:=x+h;
  end;
WriteLn ('└────┴────────┴────────┴────────┴────┘');
  Repeat Until Keypressed;{задержка экрана пока}
End.                      {не нажата любая клавиша}