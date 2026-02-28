class BankAccount
  attr_accessor :holder
  attr_reader :balance

  def initialize(holder)
    @holder = holder
    @balance = 0.00
  end

  def deposit(value)
    if value <= 0
      puts "Value must be positive!"
      return 
    end

    @balance += value
    puts "Deposit: R$ %.2f | Current Balance: R$ %.2f" % [value, @balance] 
  end

  def draw(value)
    if value <= 0
      puts "Value must be positive!"
      return
    end

    if balance >= value
      @balance -= value
      puts "WithDraw: R$%.2f | Current Balance: R$%.2f" % [value, @balance]
    else
      puts "Insufficient balance! You have only R$#{@balance}"
    end
  end

  def extract
    puts "#{@holder}: R$ %.2f" % @balance
  end

end


account = BankAccount.new("Ismael Araujo")

account.extract

account.deposit(1000)
account.deposit(500)

account.draw(300)
account.draw(1500)  
account.draw(700)

account.draw(-1000)

account.extract