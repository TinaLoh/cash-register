class CashRegister
  attr_reader :total

  def initialize(total = 0)
    @total = total
  end

  def total  #don't need this method if you have the attr_reader :total above.
  @total
  end

  def purchase(item_price)
    @total += item_price.to_f
  end

  def pay(amount_paid)
    amount_paid.to_f - @total
  end

end
