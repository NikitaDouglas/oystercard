class Oystercard

attr_reader :balance

BALANCE_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(number)
    @balance += number
    raise "ERROR: The Oyster Card top-up limit is £#{BALANCE_LIMIT}" if (@balance + number) > BALANCE_LIMIT
  end
end
