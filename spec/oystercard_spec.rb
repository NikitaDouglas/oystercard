require 'oystercard'

describe Oystercard do
  it "allows a user to check the balance of the card" do
    card = Oystercard.new
  expect(card.balance).to eq(0)
end

end
