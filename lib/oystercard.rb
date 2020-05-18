class Oystercard

attr_reader :balance

BALANCE_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(number)
    raise "ERROR: The Oyster Card top-up limit is £#{BALANCE_LIMIT}" if check_balance_limit(number)
    @balance += number
  end

  def deduct(number)
    @balance -= number
  end

  private

  def check_balance_limit(number)
    (@balance + number) > BALANCE_LIMIT
  end
end
