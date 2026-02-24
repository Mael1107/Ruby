books = {
  book_001: {
    title: "Clean Code",
    author: "Robert Martin",
    year: 2008,
    category: "Tecnologia",
    available: true
  },
  book_002: {
    title: "O Hobbit",  
    author: "J.R.R. Tolkien",
    year: 1937,
    category: "Fantasia",
    available: false
  },
  book_003: {
    title: "1984",
    author: "George Orwell",
    year: 1949,
    category: "Ficção",
    available: true
  },
  book_004: {
    title: "Sapiens",
    author: "Yuval Harari",
    year: 2011,
    category: "História",
    available: true
  },
  book_005: {
    title: "Harry Potter",
    author: "J.K. Rowling",
    year: 1997,
    category: "Fantasia",
    available: false
  }
}

members = {
  mem_001: {
    name: "Ana Silva",
    email: "ana@email.com",
    borrowed_books: [:book_002]
  },
  mem_002: {
    name: "Carlos Santos",
    email: "carlos@email.com",
    borrowed_books: [:book_005]
  },
  mem_003: {
    name: "Beatriz Lima",
    email: "beatriz@email.com",
    borrowed_books: []
  }
}


puts "=== AVAILABLE BOOKS ==="

available_books = books.select { |id, data| data[:available] }

available_books.each do |id, data|
  puts "#{id}: #{data[:title]} - #{data[:author]} (#{data[:category]})"
end



puts "=== BOOKS BY CATEGORY ==="

books_by_category = Hash.new(0)

books.each do |id, data|
  category = data[:category]

  books_by_category[category] += 1
end

books_by_category.each do |id, data|
  puts "#{id}: #{data} book(s)"
end

puts books_by_category



puts "=== LOAN REPORT ==="

members.each do |id, data|
  puts "#{data[:name]}:"

  if data[:borrowed_books].empty?
    puts "No books borrowed."
  else
    puts "#{data[:borrowed_books]}"
  end
end


puts "=== CLASSICS BOOKS (before 2000s) ==="

classic_books = books.select { |id, data| data[:year] < 2000 }

classic_books.each_value do |book|
  puts "#{book[:title]}"
end


updated_books = books.transform_values do |book|
  book.merge(times_borrowed: 0)
end

puts "Ex: #{updated_books[:book_001]}"


def book_lending(book_id, member_id, books, members)
  
end
