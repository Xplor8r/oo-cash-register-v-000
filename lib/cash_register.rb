class CashRegister
  
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 0)
    if quantity > 1
      @total += price*quantity
    else
      @total += price
    end
    @items << title
  end
  
  def apply_discount
    if @discount != 0
      discount_total = @total - (@total*0.2).round
      @total = discount_total
      "After the discount, the total comes to $#{discount_total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
  
  end
end