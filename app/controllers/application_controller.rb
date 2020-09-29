require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'fwitter_secret'
  end

  get '/' do
    erb :'/index'
  end
<<<<<<< HEAD
  
=======
>>>>>>> c4d3a9933c491a3a79a90f158bdd067fe674edf9

  def logged_in
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end


end
