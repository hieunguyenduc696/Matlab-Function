% tich phan gauss n diem nut
function [I] = TPGauss(f, a, b, n)
syms x;

Wn = (x^2-1)^n;
Wn = 1/(factorial(n)*2^n)*diff(Wn, n);
xn = roots(coeffs(Wn, 'All'));
xn = sort(double(xn));

A = zeros(n, n);
Y = zeros(n, 1);
for i = 1:n
    Y(i) = (1^i - (-1)^i)/i;
    for j = 1:n
        A(i, j) = xn(j)^(i-1);
    end
end

w = A\Y;
tn = xn.*(b-a)./2 + (a+b)/2;

I = 0;
for i = 1:n
    I = I + w(i)*subs(f, x, tn(i));
end
I = (b-a)/2*I;

end