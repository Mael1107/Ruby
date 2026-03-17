class Official
  attr_accessor :name, :base_salary

  def initialize(name, base_salary)
    @name = name
    @base_salary = base_salary
  end

  def calculate_salary
    @base_salary
  end

  def info
    puts "\n" + "=" * 40
    puts "👤 #{@name}"
    puts "💰 Salário: R$ %.2f" % calculate_salary
    puts "=" * 40
  end
end



class Manager < Official
  attr_accessor :bonus

  def initialize(name, base_salary, bonus)
    super(name, base_salary)
    @bonus = bonus
  end

  def calculate_salary
    @base_salary + @bonus
   
  end

  def info
    puts "\n" + "=" * 40
    puts "👤 #{@name} (Gerente)"
    puts "💵 Salário base: R$ %.2f" % @base_salary
    puts "🎁 Bônus: R$ %.2f" % @bonus
    puts "💰 Total: R$ %.2f" % calculate_salary
    puts "=" * 40
  end
end



class Seller < Official
  attr_reader :commission

  def initialize(name, base_salary, commission)
    super(name, base_salary)
    return @commission = commission
  end

  def calculate_salary
    return @base_salary + @commission
  end
end

manager = Manager.new("Ismael", 1000.0, 100.0)
manager.info