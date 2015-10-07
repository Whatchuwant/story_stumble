require 'sinatra'
require 'sinatra/activerecord'
require './app'
#links models.rb to be used
require './models'

set(:database, 'sqlite3:jul_dan.sqlite3')