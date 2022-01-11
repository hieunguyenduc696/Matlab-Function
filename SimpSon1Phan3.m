function [simpson1, rEdf_simpson1] = SimpSon1Phan3(xx,yy,I)   
     h = 0;
     for i=1:2:length(xx)-2
         h = h + (xx(i+2)-xx(i))*(yy(i+2)+4*yy(i+1)+yy(i))/6;
     end
     simpson1 = h;
     rEdf_simpson1=abs((h-I)/I);
end