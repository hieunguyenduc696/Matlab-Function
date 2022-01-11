function [kq] = LapViPhan(f, a, b, delta, y0)
    syms x y;
    xo = a; yo = y0; k = 1; yn = 0;
    while 1
        yn = y0 + int(subs(f,y,yo), x, xo, x);
        rEyn = double(abs(int(yn - yo, x, a, b) / int(yo, x, a, b)));
        if (rEyn <= delta)
            break
        end
        yo = yn;
        k = k + 1;
    end
    kq = yn;
end