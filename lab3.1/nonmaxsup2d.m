function maximg = nonmaxsup2d(response, thresh)

maximg = zeros(size(response));
[h, w] = size(response);
for i = 2:h-1
    for j = 2:w-1
        p = response(i-1:i+1,j-1:j+1); p = p(:); p(5) = 0;
        if ((response(i,j) >= thresh) & (response(i,j) > p))
            maximg(i,j) = 1;
        end
    end
end