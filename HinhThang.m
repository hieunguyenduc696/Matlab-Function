function [hinhthang, rEdf_hinhthang] = HinhThang(xx,yy,I)   
     h = 0;
     for i=1:length(xx)-1
         h = h + (xx(i+1)-xx(i))*(yy(i+1)+yy(i))/2;
     end
     hinhthang = h;
     rEdf_hinhthang=abs((h-I)/I);
end