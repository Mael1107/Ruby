def display_table(number)
  1.upto(10) do |i|
    result = number * i
    if block_given?
      yield(result)
    else
      puts "#{number} x #{i} = #{result}"
    end
  end
end

display_table(5) do |result|
  puts result if result.even?
end
