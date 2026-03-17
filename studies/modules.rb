module Engine
  def start_engine
    puts "#{@name} is starting engine!"
  end

  def turn_off_engine
    puts "#{@name} is turning off engine!"
  end
end

module Horn
  def honking
    puts "Honking!"
  end
end

class Car
  include Engine, Horn

  def initialize(name)
    @name = name
  end
end

class Motorcycle
  include Engine, Horn
  
  def initialize(name)
    @name = name
  end
end

class Bike
  include Horn
  
  def initialize(name)
    @name = name
  end
end

puts "=== CAR ==="
car = Car.new("Honda Civic")
car.start_engine
car.honking
car.turn_off_engine

puts "\n=== MOTORCYCLE ==="
motorcycle = Motorcycle.new("Honda Hornet")
motorcycle.start_engine
motorcycle.honking
motorcycle.turn_off_engine

puts "\n=== BIKE ==="
bike = Bike.new("Caloi")
bike.honking