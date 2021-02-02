require_relative 'config/environment'


class App < Sinatra::Base

  get '/' do 
    "hello"
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    originalstring = params["string"]
    @reversedstring = originalstring.reverse
    erb :reversed
  end
#Note: Instance variables are ONLY passed from the controller method where 
    #they are created to the view that is rendered, not between controller methods.



  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end