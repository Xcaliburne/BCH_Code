function m_invert = invert(M, n)
    [size_x, size_y] = size(M);
    com_transpose = transpose(comatrix(M,n));
    m_invert = zeros(size_x,size_y);
    det = alpha_det(M, n)
    for x = 1:size_x
       for y = 1:size_y
           m_invert(y,x) = com_transpose(y,x) - det;
       end
    end
end

