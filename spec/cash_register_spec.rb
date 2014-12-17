require 'cash_register'

describe CashRegister do

  describe "initialization" do # this is a process, not method, no pound sign
    it 'takes an initial amount' do
      cash_register = CashRegister.new(74.32)

      expect(cash_register.total).to eq(74.32)
    end
  end

  describe "#total" do  # the pound sign in describe represents a method
    it 'starts at 0' do
      cash_register = CashRegister.new

      total = cash_register.total

      expect(total).to eq(0)

    end
  end


  describe "#purchase" do
    it 'takes a floating number and adds that to the total' do

      cash_register = CashRegister.new

      total = cash_register.purchase(5.99)

      expect(total).to eq(5.99)
    end
  end

  describe "#pay" do
    it 'takes one floating number for how much is paid. It should return how much change is given' do

      cash_register = CashRegister.new

      cash_register.purchase(13.99)
      change = cash_register.pay(15.99)

      expect(change).to eq(2.00)

    end
  end
end
