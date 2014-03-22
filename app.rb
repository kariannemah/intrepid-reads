require 'rubygems'
require 'sinatra'
require 'csv'


get '/' do
  file = CSV.read("book-list.csv")

  number_of_titles = file.length
  get_book = rand(0..number_of_titles-1)

  book_info = file[get_book]
  @country = book_info[0]
  @author = book_info[1]
  if book_info.length == 3
    @title = book_info[2]
  end

  erb :index
end