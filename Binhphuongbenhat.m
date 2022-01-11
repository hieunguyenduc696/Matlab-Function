clear all;
clc;
xx=[26.67;93.33;148.89;315.56];
yy=[1.35;0.085;0.012;0.00075];
xc=20;
N=length(xx);X=sum(xx);Y=sum(yy);
XX=sum(xx.*xx);XY=sum(xx.*yy);
syms A B
[A,B]=solve(XX*A + X*B == XY, X*A +N*B==Y);
syms x
R=A*x+B;
disp('Ham so can tim la: ')
disp(R)
yc=subs(R,x,xc);
ezplot(R,[xx(1) xx(end)]);
hold on; plot(xx,yy,'bo');