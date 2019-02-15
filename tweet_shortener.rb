# Write your code here.
def dictionary
  wrds2sub = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  dictionary.keys.each do |x|
    tweet_arr.map! { |y| y.downcase == x ? dictionary[x] : y}
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end