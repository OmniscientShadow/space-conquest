require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    session[:currentplanet] = "Earth"
    
    session[:wood] = 0
    session[:iron] = 0
    session[:clay] = 0
    session[:hunger] = 10
    session[:food] = 0
    session[:planets] = 
    {
      :earth => [3, 3, 3, 4],
      :testplanet => [5, 1, 0, 3]
    }
    
    return erb :index
  end
  
   get '/home' do
    return erb :home
  end
  
  get '/workshop' do
    return erb :workshop
  end
   
  post '/workshop' do
    session[:iron]+=1
    return erb :workshop
  end
  
  get '/starscope' do
    return erb :starscope
  end
  
  get '/tasks' do
    return erb :tasks
  end
  
  post '/earth' do
    session[:currentplanet] = "Earth"
    return erb :home
  end
  
  post '/testplanet' do
    session[:currentplanet] = "Test Planet"
    return erb :home
  end
  
  post '/wood' do
    session[:wood] += resourcechange("wood")
    return erb :workshop
  end
  
  post '/iron' do
    session[:iron] += resourcechange("iron")
    return erb :workshop
  end
  
  post '/clay' do
    session[:clay] += resourcechange("clay")
    return erb :workshop
  end
  
  post '/food' do
    session[:food] += resourcechange("food")
    return erb :workshop
  end
end
