require 'rubygems'
require 'sinatra'
require 'csv'
require './junk'

get '/' do
  file = CSV.read("book-list.csv")

  number_of_titles = file.length
  get_book = rand(0..25-1)

  array = CSV.read("book-list.csv")[get_book]
  @country = array[0]
  @author = array[1]
  if array.length == 3
    @title = array[2]
  end
  erb :index
end