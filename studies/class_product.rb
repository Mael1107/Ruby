class Product
  attr_accessor :name, :category
  attr_reader :price, :stock

  def initialize(name, price, category)
    @name = name
    @price = price
    @category = category
    @stock = 0
  end

  def add_stock(value)
    if value <= 0
      puts "Value must be positive!"
      return 
    end

    @stock += value
    puts "Stock added successfully! Value: #{value}"

  end

  def sale(value)
    if value <= 0 || value > @stock
      puts "Error! Fill in correctly and try again."
      return
    end

    @stock -= value
    total_price = value * @price
    puts "Successfully executed sale! Price total: R$%.2f" % total_price
  end

  def apply_discount(value)
    if value > 0 && value <= 100.0
      old_price = @price
      percentual = 1 - value / 100.0
      @price = @price * percentual
      puts "Discount successfully applied! Old price: R$%.2f | New price: R$%.2f"  % [old_price, @price]
    else
      puts "❌ Percentage must be between 0 and 100!"
    end
  end
  def info
    puts "=========PRODUCT INFORMATION========="
    status = available? ? "Available" : "Unavailable"
    puts "Product Name: #{@name}"
    puts "Produc Price: R$%.2f" % @price
    puts "Product Category: #{@category}"
    puts "Product Stock: #{@stock}"
    puts status
    puts "====================================="
  end

  def available?
    if @stock > 0
      return true
    else
      return false
    end
  end
end

mouse = Product.new("Mouse Delux M900 PRO", 200.00, "Eletronic")

mouse.info

mouse.add_stock(5)
mouse.apply_discount(10)

mouse.sale(2)

mouse.info

puts mouse.available?





