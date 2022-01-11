function [yc] = Newton(xx,yy,xc)
n = length(xx);
a=zeros(n,n);
a(:,1)=yy(:);
for j = 2:n
    for i= 1:n-j+1
        a(i,j) = (a(i+1,j-1)-a(i,j-1))/(xx(i+j-1)-xx(i));
    end
end
x=1;
yc = a(1,1);
for j = 1:n-1
    x = x*(xc-xx(j));
    yc = yc+a(1,j+1)*x;
end
end