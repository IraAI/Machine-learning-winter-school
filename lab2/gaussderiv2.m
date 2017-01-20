function [dxx,dxy,dyy]=gaussderiv2(in,sigma)

x = [-ceil(3.0*sigma):ceil(3.0*sigma)];
G=gauss(x,sigma);
D=dgauss(x,sigma);
[dx,dy]=gaussderiv(in,sigma);
size(dx)
size(dx)
dxx = conv2(G, D, dx, 'same');
dxy = conv2(D, G, dx,'same');
dyy = conv2(D, G, dy,'same');

end