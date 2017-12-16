class CashRegister

attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)
    if quantity > 0
      price = price * quantity
    end
    @total = @total + price
  end

  def apply_discount
    @total = @total * ((100 - @discount) * 0.01)
    "After the discount, the total comes to #{@total}"
  end



end
