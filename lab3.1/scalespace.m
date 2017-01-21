function [ss,sigma]=scalespace(img,levels,step)

sigma = ones(1, levels);
ss(:,:,1) = img;
for i= 2:levels
    sigma(i) = step*sigma(i-1);

    S = gaussfilter(img,sigma(i));
    ss(:,:,i) = S;
end
