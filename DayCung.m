function [kq] = DayCung(f, delta, a, b)
    c = 0;
    while 1
        c = a - (b-a)/(f(b)-f(a))*f(a);
        fc = f(c);
        if abs(fc) <= delta
            break;
        end
        dau = sign(f(a)*fc);
        if dau > 0
            a = c;
        else
            b = c;
        end
    end
    kq = c;
end