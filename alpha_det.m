function det = alpha_det(M,n)
    [x, y] = size(M);
    det = -100;
    if x == 1 && y == x
        det = M(1,1);
    else
        if x == 2 && y == x
            a = mod(M(1,1) + M(2,2), n);
            b = mod(M(1,2) + M(2,1), n);
            det = additionTable(a, b);
        else
            for i = 1:x
                M_tmp = M;
                M_tmp(1,:) = [];
                M_tmp(:,i) = [];
                tmp_result = alpha_det(M_tmp, n);
                if tmp_result ~= -1
                    a = mod(M(1,i) + tmp_result, n);
                    if a ~= -1
                        if det == -100
                           det = a;
                        else
                           det = additionTable(det, a); 
                        end
                    end
                end
            end
        end
    end
end

