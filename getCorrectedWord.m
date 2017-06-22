function [result] = getCorrectedWord(rootsIndexes, word, n)
    
    for i = 1:length(rootsIndexes)
        v = mod(-rootsIndexes(i), n) + 1;
        word(v) = mod(word(v) + 1, 2);
    end
    
    result = word;
end