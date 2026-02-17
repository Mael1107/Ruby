numbers = [5, 12, 8, 3, 19, 7, 21, 4, 15, 10]


numbers_greater_than_ten = numbers.select { |n| n > 10 }

doubled_numbers = numbers.map { |n| n * 2 }

added_numbers = numbers.sum

largest_number = numbers.max

smaller_number = numbers.min

total_numbers = numbers.count

even_numbers = numbers.any? { |n| n.even? }

three_primary_numbers = numbers.first(3)

last_three_numbers = numbers.last(3)

ordered_numbers = numbers.sort

puts numbers_greater_than_ten.inspect
puts doubled_numbers.inspect
puts added_numbers.inspect
puts largest_number
puts smaller_number
puts total_numbers
puts even_numbers.inspect
puts three_primary_numbers.inspect
puts last_three_numbers.inspect
puts ordered_numbers.inspect







words = ["ruby", "javascript", "python", "java", "rust", "go", "php"]


longer_words = words.select { |w| w.size > 4 }

uppercase_words = words.map do |w|
  w.upcase
end

first_letter_word = words.map { |w| w[0]}

total_letters_words = words.map do |w|
  w.size
end

largest_word = words.max_by { |w| w.length }

words_starts_r = words.any? { |w| w.start_with?("r") }


puts longer_words.inspect
puts uppercase_words.inspect
puts first_letter_word.inspect
puts total_letters_words.inspect
puts largest_word
puts words_starts_r






ages = [15, 22, 18, 30, 17, 45, 19, 21, 16, 35]


result_1 = ages.select { |a| a > 18 }.sort

result_2 = ages
  .select { |a| a < 20 }
  .map { |a| a * 2 }
  .sum

even_ages = ages.select { |a| a.even? }
result_3 = ages.select { |a| a.even? }.sum / even_ages.size.to_f

puts result_1.inspect
puts result_2.inspect
puts result_3.inspect