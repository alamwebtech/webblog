require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './models'
require 'pry'



# Database configuration
set :database, "sqlite3:development.sqlite3"

# Define routes below
# get '/' do
#   erb :index
# end


get '/' do
  @user = User.all
  @time_of_day = Time.now
  erb :index
end

# get '/userlist' do
#   @user = User.all
#   erb :'/userlist'
# end


  get '/userlist' do
    @user = User.all
    erb :'/userlist'
  end




get '/log' do
  @user = User.all
  erb :'/log'
end

post '/users' do
   @user = User.create(
     name: params[:name],
     email: params[:email]
)

     redirect "/userlist"
end
