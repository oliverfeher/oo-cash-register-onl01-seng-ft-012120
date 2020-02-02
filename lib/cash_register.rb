
class CashRegister

  attr_accessor :total, :items, :discount


  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0

  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items << item
  end
  
  def apply_discount()
    if @discount > 0
      discount_value = discount.to_i / 100.0
      discount_amount = @total * discount_value
      @total = @total - discount_amount
      return  "After the discount, the total comes to $#{@total}."
      self.total
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end
  
  def void_last_transaction
    
    @items.pop
  end
  
end