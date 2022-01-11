function [kq] = EulerCaiTien(f, a, b, delta, y0)
    syms x y;
    xx = a:0.1:b;
    yyt=(0);
    yy = (y0); i = 1;
    while 1
        if i == length(xx)
            break
        end
        yyt(end+1) = yy(end) + (xx(i + 1) - xx(i))*subs(f, {x,y}, {xx(i), yy(end)});
        yy(end+1) = yy(end) + (xx(i + 1) - xx(i)) * (subs(f, {x,y}, {xx(i), yy(end)}) + subs(f, {x,y}, {xx(i+1), yyt(end)})) / 2;
        if yy(end) <= delta
            break
        end
        i = i + 1;
    end
    kq = yy(end);
end