function [df_3DG, rEdf_3DG] = BaDG(xx,yy,xc,df)
    indices = find(xx==xc);
    df_3DG = (-3*yy(indices) + 4*yy(indices+1)-yy(indices+2))/(xx(indices+2)-xx(indices));
    rEdf_3DG = abs((df-df_3DG)/df);
end