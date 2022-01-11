function [Xn] = Seidel(A, C, delta)
   B = -A./diag(A) + eye(length(A));
   G = C./diag(A);
   Xn = G;
   for i = 1:length(Xn)
       Xn(i) = B(i,:)*Xn + G(i);
   end
   fX = norm(A*Xn - C);
   while abs(fX) > delta
       for i = 1:length(Xn)
           Xn(i)=B(i,:)*Xn + G(i);
       end
       fX = norm(A*Xn - C);
   end
end