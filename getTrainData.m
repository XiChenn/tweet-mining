clear; close all; clc
%this file is to get train matrix from a txt file
fid  = fopen('train_processed.txt');
text = fgetl(fid);
X = [];
y = [];
%save('trainData1.mat', 'X', 'y', '-v7.3');

fprintf('Started...............\n')
fileName  = 'vocal_2k.txt';
n = 2000;  % Total number of words in the dictionary
dictionary = getVocabList(fileName, n);

count = 0; % - for debug only
while(text ~= -1)
    if mod(count, 1000) == 0 % - for debug only
        tic; % % - for debug only - Start stopwatch timer
    end % - for debug only
    
    word_indices = processTweet(text, dictionary);
    tempX        = tweetFeatures(word_indices, n); % Return 1 x n matrix
	tempY        = fgetl(fid);    
	y = [y; tempY];
	X = [X; tempX];	% tempX no longer need transpose
    
	text = fgetl(fid);
	count = count + 1; % - for debug only
    
	if count == 1000 % - for debug only
	    fprintf('1000 data is done\n') % - for debug only 
        % clear X;
        % clear y;
        % X = [];
        % y = [];
		% fflush(stdout); % For Octave only
		count = 0; % - for debug only
        toc; % % - for debug only - Read elapsed time from stopwatch
	end
	
end
save('trainData1.mat', 'X', 'y');
fclose(fid);
toc;
