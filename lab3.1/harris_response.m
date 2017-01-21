function response = harris_response(img,sigmad,sigmai)

x = -ceil(3*sigmai):ceil(3*sigmai);
G=gauss(x,sigmai);
G = G/sum(G);

[dx,dy]=gaussderiv(img,sigmad);

Ix= dx;
Iy = dy;

Ix2 = conv2(G, G, Ix.^2, 'same');
Iy2 = conv2(G, G,  Iy.^2,  'same');
IxIy = conv2(G, G, Ix.*Iy,  'same');

%M = [Ix2, IxIy; IxIy, Iy2];

DetM = (Ix2.*Iy2) - (IxIy).^2;
TerM = Ix2 + Iy2;
k = 0.04;
C = DetM - k* (TerM.^2);

response = C;

end