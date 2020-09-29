class TweetsController < ApplicationController

  get '/tweets' do
<<<<<<< HEAD
    if logged_in
      @tweets = Tweet.all
      erb :'/tweets/tweets'
=======
    if logged_in
      @tweets = Tweet.all
      erb :'/tweets/index'
>>>>>>> c4d3a9933c491a3a79a90f158bdd067fe674edf9
    else
      redirect '/login'
    end
  end


  get '/tweets/new' do
<<<<<<< HEAD
    if logged_in
      erb :'tweets/new'
    else
      redirect '/login'
    end
  end

  post '/tweets' do
    if logged_in
      if params[:content] == ""
        redirect '/tweets/new'
      else
        @tweet = current_user.tweets.build(content: params[:content])
        if @tweet.save
          redirect "/tweets/#{@tweet.id}"
        else
          redirect '/tweets/new'
        end
      end
    else
      redirect '/login'
    end
  end

  get '/tweets/:id' do
    if logged_in
      @tweet = Tweet.find_by_id(params[:id])
      erb :'tweets/show'
    else
      redirect '/login'
    end
  end


  get '/tweets/:id/edit' do
    if logged_in
      @tweet = Tweet.find_by_id(params[:id])
        if @tweet && @tweet.user == current_user
        erb :"/tweets/edit"
        else
        redirect '/tweets'
        end
      else
        redirect '/login'
      end
  end


  patch '/tweets/:id' do
    if logged_in
      if params[:content] == ""
        redirect  "/tweets/#{params[:id]}/edit"
      else
        @tweet = Tweet.find_by_id(params[:id])
        if @tweet && @tweet.user == current_user
          if @tweet.update(content: params[:content])
            redirect  "/tweets/#{@tweet.id}"
          else
            redirect  "/tweets/#{@tweet.id}/edit"
          end
        else
          redirect '/tweets'
        end
      end
    else
      redirect '/login'
    end
  end

  delete '/tweets/:id/delete' do
    if logged_in
      @tweet = Tweet.find_by_id(params[:id])
      if @tweet && @tweet.user == current_user
        @tweet.delete
      end
      redirect '/tweets'
    else
      redirect '/login'
    end
  end


=======

    erb :'/tweets/new'
  end

  post '/tweets' do
    @tweet = Tweet.create(params[:content])
    @tweet.user = User.create(user[:username], user[:email], user[:password])

  end

  # get '/signup' do
  #   @user = User.create(user[:username], user[:email], user[:password])
  #   @session = session[:name] = @user.name
  #     if session[:name] == ( user[:username] && user[:password] )
  #       redirect '/login'
  #     else "Incorrect username or password!"
  #     end
  #   erb :'/tweets/index'
  # end
>>>>>>> c4d3a9933c491a3a79a90f158bdd067fe674edf9


end
