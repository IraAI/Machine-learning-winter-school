function [hes,sigma]=sshessian_response(img)

step=1.1; 
levels=40;
[ss,sigma]=scalespace(img,levels,step);

hes = zeros(size(ss));

for i = 1:numel(sigma);
    [dxx,dxy,dyy]=gaussderiv2(ss(:,:,i),sigma(i));
    hes(:,:,i) = sigma(i).^4*(dxx.*dyy - dxy.*dxy);
end

end