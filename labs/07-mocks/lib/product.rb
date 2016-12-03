class Product
  attr_accessor :name, :price

  # price should be a kind of Money
  def initialize(name, price)
    @name = name
    @price = price
  end
end
