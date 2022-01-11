clear all;
clc;
format long
syms x y
a = 0; b = 0.5; xx = a:0.1:b; yy = (1); h = 0.1;
f = 2*x^2+y;

for i=1:length(xx)-1
    k1 = h*subs(f,{x,y},{xx(i),yy(end)});
    k2 = h*subs(f,{x,y},{xx(i)+h/2,yy(end)+k1/2});
    k3 = h*subs(f,{x,y},{xx(i)+h, yy(end)-k1+2*k2});
    yy(end+1)=yy(end)+(k1+4*k2+k3)/6;
end

disp('nghiem can tim la: ');
disp(yy(end));