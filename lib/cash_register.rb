
require 'pry'

class CashRegister

  attr_accessor :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {@items << title}
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = @total - @total * @discount / 100.00
      "After the discount, the total comes to $#{@total.round}."
    else
      @total = @total - @total * @discount / 100.00
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - last_transaction
  end

end #end of CashRegister Class

new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)
p new_register.items

new_register_2 = CashRegister.new
new_register_2.add_item("bananas", 5)
p new_register_2.items



# cash_register = CashRegister.new()
# cash_register_with_discount = CashRegister.new(20)
#
# cash_register.add_item("Apple", 1000, 1)
# cash_register_with_discount.add_item("Apple", 1000, 1)
#
# puts cash_register.total
# puts cash_register_with_discount.total
#
# puts cash_register.apply_discount
# puts cash_register_with_discount.apply_discount
