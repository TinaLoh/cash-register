class CashRegister

  def initialize
    @total = 0
  end

  def total
  @total
  end

  def purchase(item_price)
    @total += item_price.to_f
  end

  def pay(amount_paid)
    amount_paid.to_f - @total
  end

end
