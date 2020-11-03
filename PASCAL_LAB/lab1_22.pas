Program np12;
{Путинцев Никита}
{Вариант 12}
Uses crt;
var
  x,y,f,g,fl:integer;
Begin
  clrscr;
  fl:=0;
  writeln('Введите x,y');
  readln(x,y);
  writeln('При x=',x,' y=',y);
  Case x*y of
    -maxint..2:
          begin
            writeln('x*y',x*y,'<3');
            if (x-y=0) or (x-y=1) then
              fl:=1
            else
              begin
                f:=1 div round(arctan(1/(x-y)));
                g:=1 div round(101/(x-y-1));
              end;
          end;
    4..maxint:
         begin
           writeln('x*y=',x*y,'>3');
           f:=1 div round(exp(x)+ln(5*abs(x-y)));
           g:=(x*sqr(x)+sqr(y));
         end;
    3:
    begin
      writeln('x*y=',x*y,'=3');
      if ((1+x-(x*y))=0) or (x=-1) then
        fl:=3
      else
        begin
          f:=1 div round(1/(1+x-(x*y)));
          g:=1 div round(ln(abs(x)+sin((x*y)-1)/(1+x)));
        end;
    end;
    end;
    Case fl of
      0: writeln('f=',f,' g=',g);
      1: writeln('ноль в знаменателе');
      3: writeln('ноль в знаменателе');
    end;
    repeat until keypressed;
end.

