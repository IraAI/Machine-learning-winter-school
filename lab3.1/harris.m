function [x,y]=harris(img,sigmad,sigmai,thresh)

response=harris_response(img,sigmad,sigmai);
maximg=nonmaxsup2d(response,thresh);

[x,y]=find(maximg);
x=x'-1; y=y'-1;
end