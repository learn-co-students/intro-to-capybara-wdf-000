class Application < Sinatra::Base
  # route to respond to the homepage
  get '/' do
    erb :index
  end

  # route to responde to the form submission
  post '/greet' do
    erb :greet
  end
end
