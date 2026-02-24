numbers = [1, 2, 3, 4, 5]

def transformation_array(numbers)

  if block_given?
    numbers.map { |n| yield(n) }
  else
    numbers
  end
  
end

doubled = transformation_array(numbers) { |n| n * 2 }
puts doubled.inspect

square = transformation_array(numbers) { |n| n ** 2 }
puts square.inspect

original = transformation_array(numbers)
puts original.inspect





