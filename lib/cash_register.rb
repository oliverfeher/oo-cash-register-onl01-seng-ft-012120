

class CashRegister

  attr_accessor :total, :items, :discount, :price


  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0

  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      @items.concat([item] * quantity)
    else
      @items << item
    end
  end
  
  def apply_discount()
    if @discount > 0
      discount_value = discount.to_i / 100.0
      discount_amount = @total * discount_value
      @total -= discount_amount
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end
  
  def void_last_transaction
    if @items.size < 1
      @total = 0
    else
      @total = @total - @price
      @items.pop
    end
  end
  
end