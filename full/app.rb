require 'sinatra'
require 'sinatra/reloader'


$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')
require 'joke_fetcher'
require 'joke_stats'

class Application < Sinatra::Base
  before do
    @joke_stats = JokeStats.new(params || {})
  end


  get '/' do
    erb :home
  end

  post '/showjoke' do
    erb :joke
  end

  post '/joke_stats' do
    erb :joke_stats
  end
end