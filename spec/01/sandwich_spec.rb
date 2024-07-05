# Sandwich = Struct.new(:taste, :toppings)

class Sandwich
  attr_accessor :taste, :toppings

  def initialize(taste, toppings)
    @taste = taste
    @toppings = toppings
  end
end


RSpec.describe 'An ideal sandwich' do
  it 'is delicious' do
    sandwich = Sandwich.new('delicious', [])
    taste = sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich = Sandwich.new('delicious', [])
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end