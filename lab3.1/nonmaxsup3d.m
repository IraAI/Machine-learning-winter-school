function maximg = nonmaxsup3d(response, threshold)

maximg = zeros(size(response));
[h, w, s] = size(response);

for i = 2:h-1
    for j = 2:w-1
        for k = 2:s-1
            p = response(i-1:i+1,j-1:j+1,k-1:k+1); p = p(:); p(14) = 0;
            if (response(i,j,k) >= threshold) & (response(i,j,k) > p) 
                maximg(i,j,k) = 1;
            end    
        end
    end
end

