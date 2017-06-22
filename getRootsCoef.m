function [result] = getRootsCoef(roots)
    count = 0;
    indexes = zeros(length(roots), 1);
    for i = 1:length(roots)
        if(roots(i) == 0)
            count = count + 1;
            indexes(count) = i - 1;
        end
    end
    
    result = zeros(count, 1);   
    for i = 1:count
        result(i) = indexes(i);
    end
end