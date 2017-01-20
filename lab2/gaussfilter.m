function out=gaussfilter(in,sigma)
x = -ceil(3.0*sigma):ceil(3.0*sigma);
G=gauss(x,sigma);
out = conv2(G, G, in,'same');

end