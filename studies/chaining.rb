numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

result = numbers
  .select { |n| n.even? }
  .map { |n| n * 2 }
  .sum

puts result

words = ["ruby", "javascript", "python", "go", "rust"]

long_uppercase = words
  .select { |w| w.size > 4}
  .map { |w| w.upcase}
  .sort

puts long_uppercase.inspect



# Desafio Price List


prices = [15.50, 89.90, 120.00, 45.75, 200.00, 12.30, 350.00, 67.80]

result = prices
  .select { |p| p > 50}
  .map { |p| p * 0.9}
  .map { |p| p.round(2)}

puts result.count
puts result.max
puts result.min
puts "Average Prices: #{(result.sum / result.size).round(2)}"


