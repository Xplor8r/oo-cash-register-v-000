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
    if @discount = 0
  end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
  
  end
end