require 'extend_enumerable'

class Order
  attr_accessor :full_name, :date, :products

  def initialize(full_name, date, products)
    @full_name = full_name
    @date = date
    @products = products
  end

  def add(product)
    products.push product
  end

  def self.sum(arr)
    Money.sum arr.products.map(&:price)
  end
end
