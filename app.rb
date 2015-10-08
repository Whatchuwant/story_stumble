require 'sinatra'
require 'sinatra/activerecord'
require './app'
#requests mandrill gem for email contact
require 'mandrill'
#links models.rb to be used
require './models'

set(:database, 'sqlite3:jul_dan.sqlite3')

get '/login' do
	erb :login
end

get '/profile' do
	erb :profile
end

get '/discover' do
	erb :discover
end