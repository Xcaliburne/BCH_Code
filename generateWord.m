function [result] = generateWord(n)
    result = rand(1, n);
    result = round(mod(result * 10, 1));
end