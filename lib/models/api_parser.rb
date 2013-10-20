class APIParser

  attr_reader :url
  
  def initialize(url)
    @url = url
  end

  def get_to_posts
    reddit_hash = JSON.parse(RestClient.get(@url))


end