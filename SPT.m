function [df_SPT, rEdf_SPT] = SPT(xx,yy,xc,df)
    indices = find(xx==xc);
    df_SPT = (yy(indices+1)-yy(indices))/(xx(indices+1)-xx(indices));
    rEdf_SPT = abs((df-df_SPT)/df);
end