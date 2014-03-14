

file = CSV.read("book-list.csv")

number_of_titles = file.length
get_title = rand(0..number_of_titles-1)

@title = file[get_title]

