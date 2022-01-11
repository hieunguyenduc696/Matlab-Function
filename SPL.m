function [df_SPL, rEdf_SPL] = SPL(xx,yy,xc,df)
    indices = find(xx==xc);
    df_SPL = (yy(indices)-yy(indices-1))/(xx(indices)-xx(indices-1));
    rEdf_SPL = abs((df-df_SPL)/df);
end