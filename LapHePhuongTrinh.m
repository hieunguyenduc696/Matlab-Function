function [kq] = LapHePhuongTrinh(A, C, delta)
    B = -A./[diag(A) diag(A) diag(A)] + eye(3);
    G = C./diag(A);
    Xo = G;
    while 1
        Xn = B*Xo + G;
        fX = norm(A*Xn - C);
        if abs(fX) <= delta
            Xo = Xn;
            break;
        end
        Xo = Xn;
    end
    kq = Xo;
end