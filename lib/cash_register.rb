

class CashRegister

  attr_accessor :total, :items, :discount, :price, :quantity


  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
    @total.to_f

  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @quantity = quantity
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
      @total -= discount_amou@quantity
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end
  
  def void_last_transaction
    @items.pop(@quantity)
    if @items.size < 1
      @total = 0.0
    else
      @total = @total - @price
    end
  end
  
end