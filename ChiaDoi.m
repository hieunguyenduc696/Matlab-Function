function [kq] = ChiaDoi(f, a, b, delta)
    syms x
    c = 0;
    fa = subs(f,x,a);
    while 1 
        c = (a+b)/2;
        fc = subs(f,x,c);
        if abs(fc) <= delta
            break;
        end
        dau = sign(fa*fc);
        if dau > 0
            a = c;
        else 
            b = c;
        end
    end
    kq = c;
end