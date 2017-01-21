function [x,y,s]=sshessian(img, thresh)

[hes,sigma]=sshessian_response(img);

maximg = nonmaxsup3d(hes, thresh);

[y,x,u] = ind2sub(size(maximg), find(maximg)); 

x=x-1;
y=y-1;
s = sigma(u); 

end