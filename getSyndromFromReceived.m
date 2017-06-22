function [result] = getSyndromFromReceived(receivedExp, t)
result = zeros(1, 2 * t);
sizeFunc = size(receivedExp);
result(1, 1) = receivedExp(1);

for i = 1:2*t
    for j = 2:sizeFunc(2)
        result(i) = additionTable(result(i), i * receivedExp(j));
    end
end

end