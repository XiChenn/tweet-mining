function x = tweetFeatures(word_indices, n)
%TEETFEATURES takes in a word_indices vector and produces a feature vector
%from the word indices
%   x = TEETFEATURES(word_indices) takes in a word_indices vector and 
%   produces a feature vector from the word indices. 

x = zeros(1, n, 'int8');

for i = 1:length(word_indices)
	x(word_indices(i)) = 1;
end
    
end
