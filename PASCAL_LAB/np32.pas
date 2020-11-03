Program np32;
uses crt;
Var i,k,a,b,s,t,sum,x1,x2,m:real;
function H(a,b:real):real;
begin
  H:=a/(1+sqr(b))+b/(1+sqr(a))-sqr(a-b)*(a-b);
end;
function max(x1,x2:real):real;
begin
  max:=x1;
  if x2 > x1 then 
    max:=x2;
end;
begin
  Write('S,T:');
  Readln(s,t);
  m:=max(H(s-t,s*t)*H(s-t,s*t), H(s-t,s+t)*H(s-t,s+t)*H(s-t,s+t)*H(s-t,s+t) );
  sum:=H(s,t)+m+H(1,1);
 {+(max(sqr(H(s-t,st))),(sqr(H(s-t,s+t))*sqr(H(s-t,s+t)))+H(1,1);}
end.
