class Product 
  attr_reader :name, :original_price, :quantity_sold

  def initialize(name, original_price)
    @name = name
    @original_price = original_price
    @quantity_sold = 0
  end

  def current_price
    if @quantity_sold >= 50
      @original_price * 0.85
    elsif @quantity_sold >= 30
      @original_price * 0.9
    elsif @quantity_sold >= 10
      @original_price * 0.95
    else
      @original_price
    end
  end

  def current_discount
    if @quantity_sold >= 50
      15
    elsif @quantity_sold >= 30
      10
    elsif @quantity_sold >= 10
      5
    else
      0
    end
  end

  def sale(quantity)
    if quantity <= 0
      puts "Quantity must be positive!"
      return
    end
    @quantity_sold += quantity

    total = quantity * current_price
    total
  end


end

mouse = Product.new("Mouse Delux M900 PRO", 200.0)



puts "Total price: R$ %.2f" % mouse.sale(20)
