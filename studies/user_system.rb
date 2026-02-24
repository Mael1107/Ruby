users = {
  user_001: {
    name: "João Silva",
    email: "joao@email.com",
    age: 28,
    signature: { plan: "premium", value: 49.90, active: true }
  },
  user_002: {
    name: "Maria Santos",
    email: "maria@email.com",
    age: 32,
    signature: { plan: "basico", value: 19.90, active: true }
  },
  user_003: {
    name: "Pedro Costa",
    email: "pedro@email.com",
    age: 25,
    signature: { plan: "premium", value: 49.90, active: false }
  },
  user_004: {
    name: "Ana Lima",
    email: "ana@email.com",
    age: 30,
    signature: { plan: "basico", value: 19.90, active: true }
  }
}

puts "=== ACTIVES USER ==="

active_users = users.select do |id, data|
  data[:signature][:active] 
end


active_users.each do |id, data|
  puts "#{id}: #{data[:name]} (#{data[:signature][:plan]})"
end


total_revenue = active_users.sum { |id, data| data[:signature][:value] }

puts "Expected revenue: #{total_revenue.round(2)}"

premium_users = users
  .select { |id, data| data[:signature][:plan] == "premium" }
  .count

# premium_users_counter = 0

# users.each do |id, data|
#   if data[:signature][:plan] == "premium"
#     premium_users_counter += 1
#   end
# end

puts "Premim Users: #{premium_users}"

emails = users.map  do |id, data|
  data[:email]
end

puts emails.inspect

users_with_points = users.transform_values do |data|
  data.merge(points: 0)
end

users_with_points.each do |id, data|
  puts id, data
end