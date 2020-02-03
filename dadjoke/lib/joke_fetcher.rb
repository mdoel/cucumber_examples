require 'faraday'

class JokeFetcher
  def self.retrieve
    FaradayFetcher.retrieve
  end
end

class FaradayFetcher
  def self.retrieve
    url = 'https://icanhazdadjoke.com'

    resp = Faraday.get(url) do |req|
      req.headers['Accept'] = 'text/plain'
    end
    
    resp.body
  end
end

# While you are in the middle of development or lacking an
# internet connection, you might want to use this fetcher
# instead of the one that hits the actual API.
class StaticFetcher
  def self.retrieve
    "What's red and bad for your teeth? A Brick."
  end
end