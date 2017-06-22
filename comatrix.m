function com = comatrix(M, n)
    [size_x, size_y] = size(M);
    com = zeros(size_x, size_y);
    for x = 1:size_x
       for y = 1:size_y
            M_tmp = M;
            M_tmp(y,:) = [];
            M_tmp(:,x) = [];
            com(y,x) = alpha_det(M_tmp, n);
       end
    end
end

