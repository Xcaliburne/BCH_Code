function [result] = getSyndromMatrix(syndroms, t)
result = zeros(t);

for i = 1:t
    for j = 1:t
        result(i, j) = syndroms(i + j - 1);
    end
end

end