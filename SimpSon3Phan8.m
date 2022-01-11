function [simpson2, rEdf_simpson2] = SimpSon3Phan8(xx,yy,I)   
     h = 0;
     for i=1:3:length(xx)-3
         h = h + (xx(i+3)-xx(i))*(yy(i+3)+3*yy(i+2)+3*yy(i+1)+yy(i))/8;
     end
     simpson2 = h;
     rEdf_simpson2=abs((h-I)/I);
end