books = [
  { title: "1984", author: "George Orwell", year: 1949, pages: 328 },
  { title: "O Hobbit", author: "J.R.R. Tolkien", year: 1937, pages: 310 },
  { title: "Harry Potter", author: "J.K. Rowling", year: 1997, pages: 223 },
  { title: "Sapiens", author: "Yuval Harari", year: 2011, pages: 443 },
  { title: "Clean Code", author: "Robert Martin", year: 2008, pages: 464 }
]

books.each do |b|
  puts b[:title]
end

filter_books = books.select { |b| b[:year] > 2000 }.map { |b| b[:title] }

book_more_pages = books.max_by { |b| b[:pages] }


author_counter = {}

books.each do |book|
  author = book[:author]

  if author_counter.key?(author)
    author_counter[author] += 1
  else
    author_counter[author] = 1
  end
end


books_with_read = books.map do |book|
  book.merge(read: false)
end

puts "Books that were published after the 2000s:  #{filter_books}"
puts book_more_pages
puts author_counter
puts books_with_read
puts books_with_read[1]



