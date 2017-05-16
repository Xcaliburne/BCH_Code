function [result] = additionTable(coef1, coef2)

if coef1 == coef2
    result = -1;
else

    table = [0 3 6 1 5 4 2 ;
             0 0 4 0 2 6 5 ; 
             0 0 0 5 1 3 0 ; 
             0 0 0 0 6 2 4 ; 
             0 0 0 0 0 0 3 ; 
             0 0 0 0 0 0 1];
    result = table(min(coef1 + 1, coef2 + 1), max(coef1 + 1, coef2 + 1));
end
end

