require 'sinatra'
require 'sinatra/activerecord'
#requests mandrill gem for email contact
require 'mandrill'
require 'sinatra/flash'
#links models.rb to be used
require './models'

set(:database, 'sqlite3:jul_dan.sqlite3')

enable :sessions

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

