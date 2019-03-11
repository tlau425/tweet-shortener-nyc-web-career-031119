# Write your code here.
def dictionary
     {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str_tweets)
  result = []
  arr_dictionary = dictionary.keys
  arr_tweets = str_tweets.split(' ')
  arr_tweets.each do |word|
    arr_dictionary.include?(word) ? result << dictionary[word] : result << word
  end
  result.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map do |str_tweets|
   puts word_substituter(str_tweets)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)
    elsif phrase.length <= 140
      phrase
    end
  end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)[0..140] + "..."
    else
      phrase
    end
  end.join(" ")
end
