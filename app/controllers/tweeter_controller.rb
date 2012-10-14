class TweeterController < ApplicationController
  
  def hashtag
    @search_results = nil
    
    Twitter.configure do |config|
      config.consumer_key = "9j2l2OCX4dMlqHcWOIXedQ"
      config.consumer_secret = "gEEZk6CzYSn66rRLFOXMpzX0QoYgGxKL6njzn7aYGc"
      config.oauth_token = "19033910-0x1bZA8POGPuN4k8p1g4I3eBKv5E4j743r5voEwR8"
      config.oauth_token_secret = "Y2WSCe1s4G1aFjomGoVrOYH1rrqViou1zGzaeU8o"
    end
    
    if !params[:tag].nil?
      @search_results = Twitter.search("##{params[:tag]}",)
    end
  end
  
end
