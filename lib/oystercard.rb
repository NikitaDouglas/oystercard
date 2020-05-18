class Oystercard

attr_reader :balance

BALANCE_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise "ERROR: The Oyster Card top-up limit is £#{BALANCE_LIMIT}" if check_balance_limit(amount)
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  private

  def check_balance_limit(amount)
    @balance += amount > BALANCE_LIMIT
  end
end
