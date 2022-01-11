function [a] = Lap(f, phi, delta, xo)
    xn = 0;
    syms x
    while 1
        xn = subs(phi, x, xo);
        fx = subs(f, x, xn);
        if abs(fx) <= delta
            break;
        end
        xo = xn;
    end
    a = xn;
end