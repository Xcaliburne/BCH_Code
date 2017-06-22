function [result] = getPolynomFromWord(word)
polynom = zeros(1, length(word));
count = 0;

for i = 1:length(word)
    if(word(i) == 1)
        count = count + 1;
        polynom(count) = i - 1;
    end
end

result = zeros(1, count);
for i = 1:count
    result(i) = polynom(i);
end

if(count == 0)
    result = -1;
end
end