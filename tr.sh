tr 'A-Z' 'a-z' < traintweet.txt | tr -sc "a-zA-Z" "\n" | sort | uniq -c | sort -n -r > vocalList.txt



