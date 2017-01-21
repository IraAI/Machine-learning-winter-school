function [dxx,dxy,dyy]=gaussderiv2(in,sigma)

% x = [-ceil(3.0*sigma):ceil(3.0*sigma)];
% G=gauss(x,sigma);
% D=dgauss(x,sigma);
% [dx,dy]=gaussderiv(in,sigma);
% dxx = conv2(G, D, dx, 'same');
% dxy = conv2(D, G, dx,'same');
% dyy = conv2(D, G, dy,'same');

in = gaussfilter(in, sigma);
dx = conv2(1, [1 0 -1]/2, in, 'same');
dxx = conv2(1, [1 -2 1], in, 'same');
dxy = conv2([1 0 -1]/2, 1, dx, 'same');
dyy = conv2([1 -2 1], 1, in, 'same');

end