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

def twitter_id(screen_name)
  Twitter.user(screen_name).id 
end

def is_following?(a,b)
  followers = Twitter.follower_ids(twitter_id(b)).ids
  followers.include?(twitter_id(a))
end
  