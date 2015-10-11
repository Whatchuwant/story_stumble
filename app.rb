require 'sinatra'
require 'sinatra/activerecord'
#requests mandrill gem for email contact
require 'mandrill'
require 'sinatra/flash'
#links models.rb to be used
require './models'

set(:database, 'sqlite3:jul_dan.sqlite3')

enable :sessions

get '/' do
	erb :info
end

get '/login' do
	erb :login
end

get '/profile' do
	erb :profile
end

get '/discover' do
	erb :discover
end

get '/settings' do
	erb :settings
end

#http POST method and '/login' action route
post '/login' do
	@user = User.where(email: params[:email]).first

	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		flash[:info] = "You're now signed in"
		redirect "/"

	else
		flash[:alert] = "Your password or email is incorrect"
		redirect "/login"
	end
end

# # HTTP GET method and "/signup" action route
# get "/signup" do
#   # tell the person that they are signed up and logged in
#   flash[:info] = "You are now signed up and logged in"

#   # this will output whatever is within the signup.erb template
#   erb :signup
# end

post '/signup' do
	@user = User.create(email: params[:email], password: params[:password])
	session[:user_id] = @user.id
	redirect '/'
end

get '/logout' do
	session[:user_id] = nil
	flash[:info] = "You are now logged out"
	redirect '/'
end

def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end
