
class Coffee

  attr_accessor :price
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
    self.price += 0.25
  end

  def price
    @price ||= 1.00
  end

  def color
    ingredients.include?(:milk) ? :light : :dark
  end

  def temperature
    ingredients.include?(:milk) ? 190.0 : 205.0
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/examples.txt'
end


RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  context 'with milk' do
    before { coffee.add :milk }

    it 'has milk' do
      expect(coffee.ingredients).to include(:milk)
    end

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end

    it 'is light in color' do
      expect(coffee.color).to be(:light)
    end

    it 'is cooler than 200 degrees Fahrenheit' do
      expect(coffee.temperature).to be < 200.00
    end


  end


end