require 'twitter'
require 'dotenv'
require 'pry'
Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["twitter_api_key"]
  config.consumer_secret     = ENV["api_secret_key"]
  config.access_token        = ENV["twitter_access_token"]
  config.access_token_secret = ENV["twitter_access_token_secret"]
end

print client.followers("@peonies_heloise")

client_stream = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV["twitter_api_key"]
  config.consumer_secret     = ENV["api_secret_key"]
  config.access_token        = ENV["twitter_access_token"]
  config.access_token_secret = ENV["twitter_access_token_secret"]
end


#topics = ["coffee", "tea"]
#client_stream.filter(track: topics.join(",")) do |object|
#  puts object.text if object.is_a?(Twitter::Tweet)
#end







