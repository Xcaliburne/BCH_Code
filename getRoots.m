function [result] = getRoots(MuPolynom, n)
    result = zeros(n, 1);
    for alpha = 1:n
        sum = -1;
        for i = 1:length(MuPolynom)
            value = mod(MuPolynom(i) + ((alpha - 1) * (length(MuPolynom) - i + 1)), n);
            if sum ~= -1
                sum = additionTable(sum, value);
            else
            	sum = value;
            end
        end
        result(alpha) = sum;
    end
end