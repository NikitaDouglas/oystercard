require 'oystercard'

describe Oystercard do
  subject(:card) {Oystercard.new}

  it "allows a user to check the balance of the card" do
    expect(card.balance).to eq(0)
  end

  describe "#top_up" do

     it 'allows a user to top up their card' do
       expect { card.top_up(10) }.to change { card.balance }
     end

     it "limits the amount a user can top to £90" do
       expect { card.top_up(91) }.to raise_error("ERROR: The Oyster Card top-up limit is £90")
     end
   end

   describe "#deduct" do

     it "allows a user to have a fare deducted from their card" do
       card.top_up(10)
       expect { card.deduct((4.90)) }.to change { card.balance }.by(-4.90)
     end
   end
end
