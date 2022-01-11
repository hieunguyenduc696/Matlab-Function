function [df_3DC, rEdf_3DC] = BaDC(xx,yy,xc,df)
    indices = find(xx==xc);
    df_3DC = (-3*yy(indices) + 4*yy(indices+1)-yy(indices+2))/(xx(indices+2)-xx(indices));
    rEdf_3DC = abs((df-df_3DC)/df);
end