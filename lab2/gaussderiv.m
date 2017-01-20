function [dx,dy]=gaussderiv(in,sigma)

x = [-ceil(3.0*sigma):ceil(3.0*sigma)];
G=gauss(x,sigma);
D=dgauss(x,sigma);
dx=conv2(G, D, in,'same');
dy=conv2(D, G, in,'same');

end
