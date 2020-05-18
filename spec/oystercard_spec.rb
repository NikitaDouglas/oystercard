require 'oystercard'

describe Oystercard do
  subject(:card) {Oystercard.new}

  it "allows a user to check the balance of the card" do
  expect(card.balance).to eq(0)
end

  it 'allows a user to top up their card' do
    expect { card.top_up(10) }.to change { card.balance }
  end

end
