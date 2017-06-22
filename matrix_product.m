function product = matrix_product(A, B,  n)
    [Ax,Ay]=size(A);
    [Bx,By]=size(B);

    if Ay ~= Bx
        error('inner dimensions must match');
    end

    product = zeros(Ax,By)-1;

    for i = 1:Ax
         for j = 1:By
             for k = 1:Ay
                 if product(i,j) ~= -1
                     product(i,j) = additionTable(product(i,j), mod(A(i,k)+B(k,j), n));
                 else
                     product(i,j) = mod(A(i,k)+B(k,j), n);
                 end
             end
         end
    end
end