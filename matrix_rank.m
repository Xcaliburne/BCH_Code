function rank = matrix_rank( M )
%matrix_rank: returns the rank of a matrix
%   Detailed explanation goes here
    [size_x, size_y] = size(M);
    for i = 1:size_x
        if alpha_det(M(1:i,1:i), 7) == -1
           rank = i-1;
           return
        end
    end
end

