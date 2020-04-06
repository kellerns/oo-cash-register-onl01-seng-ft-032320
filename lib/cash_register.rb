class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  attr_writer :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, number = 1)
    @price = price
    @total += price * number
    @last_number = number
    if number > 1
      counter = 0
      while counter < number
      @items << item
      counter += 1
      end
    else
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0
      @price_off = (@price * @discount)/100
      @total -= @price_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= (@price * @last_number)
    if @items.length == 0
      @total -= @total
    else
    end
    @total
  end

end
