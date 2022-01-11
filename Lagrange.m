function [yc] = Lagrange(xx,yy,xc,isPlot)
n = length(xx);
syms x;
L = sym(zeros(n,1));
for i=1:n
    L(i,1)=1;
    for j=1:n
        if j == i
            continue;
        end
        L(i,1)=L(i,1)*(x*1.0-xx(j))./(xx(i)-xx(j));
    end
end
P=0;
for i=1:n
    P=P+L(i,1)*yy(i);
end
yc = subs(P,x,xc);
yc = double(yc);
if isPlot==1
    ezplot(P,[xx(1) xx(end)]);
    hold on ;
    plot(xx,yy,'bo');
end
end