require 'rubygems'
require 'twitter'
require 'sinatra'

get '/' do 

  erb :index
end

get '/follows' do 
  @user1 = params[:user1]
  @user2 = params[:user2]
  
  #not implemented yet
  @following = is_following?(@user1, @user2)
  
  erb :follows
end
