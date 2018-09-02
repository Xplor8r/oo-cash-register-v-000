require "pry"


class CashRegister
  
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 0)
    if quantity > 1
      self.total += price * quantity
      quantity.times do
        @items << title
      end
      self.last_transaction = price * quantity
    else
      self.total += price
      @items << title
    end
   
     
  end

  def apply_discount
    if @discount != 0
      discount_total = self.total - (self.total*0.2).round
      self.total = discount_total
      "After the discount, the total comes to $#{discount_total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total - self.last_transaction
  end
end