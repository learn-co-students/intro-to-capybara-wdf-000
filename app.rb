class Application < Sinatra::Base

  get '/' do
    erb :index
  end

  #route to respond to the form submission
  post '/greet' do
    erb :greet
  end
end
