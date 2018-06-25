require "twitter"

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['MY_CONSUMER_KEY']
  config.consumer_secret     = ENV['MY_CONSUMER_SECRET']
  config.access_token        = ENV['MY_ACCESS_TOKEN']
  config.access_token_secret = ENV['MY_ACCESS_TOKEN_SECRET']
end

begin
  pakutui = ""
  while pakutui == ""
    client.list_timeline(810045571905908737, count: 100).each do |tweet|
      pakutui = tweet.user.status.text.to_s
      if /@|#|RT|twi|http|[ちまさく]ん|【/ === pakutui || tweet.user.status.user.screen_name == "_nagatea"
        next
      else
        break
      end
    end
  end

  contents = pakutui.scan(/.{1,140}/m)
  client.update("#{contents[0]}")
  
rescue => exception
  puts(exception.message)
  puts(exception.backtrace)
  exit(0)
end
