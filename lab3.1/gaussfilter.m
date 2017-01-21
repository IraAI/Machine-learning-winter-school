function out=gaussfilter(in, sigma)

x = -ceil(3*sigma):ceil(3*sigma);
G=gauss(x,sigma);
G = G/sum(G);

out = conv2(G, G, in,'same');

end