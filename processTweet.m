function word_indices = processTweet(tweet_contents, dictionary)
%PROCESStweet preprocesses a tweet and returns a list of word_indices 
%   word_indices = PROCESStweet(tweet_contents) preprocesses 
%   a tweet and returns a list of indices of the 
%   words contained in the tweet. 
%

% Init return value
word_indices = [];

while ~isempty(tweet_contents)

    % Tokenize and also get rid of any punctuation
    [str, tweet_contents] = strtok(tweet_contents);

    % Skip the word if it is too short
    if length(str) < 1
       continue;
    end

	try 
		word_indices = [word_indices; dictionary(str)];
	catch
		continue;
	end

end

end
