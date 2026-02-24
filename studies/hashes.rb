student = {
  name: "Ismael",
  age: 18,
  grades: [10, 9, 7],
  active: true
}

student[:email] = "araujoismael0982@gmail.com"
average = student[:grades].sum / student[:grades].size.to_f
puts average.round(1)

student.each_key do |key|
  puts key
end

puts student.key?(:curso)
puts student