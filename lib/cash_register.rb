class CashRegister

attr_accessor :total, :discount, :items

@items = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 0)
    @items << item
    if quantity > 0
      price = price * quantity
    end
    @total = @total + price
  end

  def apply_discount
    if discount != 0
      @total = @total * ((100 - @discount) * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
