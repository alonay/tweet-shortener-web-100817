
dictionary = {
  "hello": 'hi',
  "to": "2",
  "two": "2",
  "too": "2",
  "for": "4",
  "four": "4",
  "be": "b",
  "you": "u",
  "at": "@",
  "and": "&",
}

def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" =>"b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
  array_of_tweet = tweet.split(" ")
  new_array = []
    array_of_tweet.each do |word|
      if dictionary.key?(word)
        new_array.push(dictionary[word])
      else
        new_array.push word
      end
    end
    new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
 tweet[0..139]
end
