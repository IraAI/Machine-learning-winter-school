function [dx,dy]=gaussderiv(in,sigma)

out = gaussfilter(in, sigma);
dx = conv2(1, [0.5, 0, -0.5], out, 'same');
dy = conv2([0.5, 0, -0.5], 1, out, 'same');

end
