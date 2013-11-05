function dictionary = getVocabList(fileName, n)
%GETVOCABLIST reads the fixed vocabulary list in fileName and returns a
%map of the words
%   vocabList = GETVOCABLIST() reads the fixed vocabulary list in fileName 
%   and returns a map of the words in vocabList.


%% Read the fixed vocabulary list
fid = fopen(fileName);

% Use map to store the vocabulary.
dictionary = containers.Map;
vocabList = cell(n, 1);
for i = 1:n
    vocabList{i} = fscanf(fid, '%s', 1);
    dictionary(vocabList{i}) = i;
end
fclose(fid);

end
