function [kq] = TiepTuyen(f, delta, xo)
    syms x
    df = diff(f, x);
    xn = 0;
    while 1
        xn = xo - subs(f,x,xo)/subs(df,x,xo);
        xn = double(xn);
        fx = subs(f,x,xn);
        if abs(fx) <= delta
            break;
        end
        xo = xn;
    end
    kq = xn;
end