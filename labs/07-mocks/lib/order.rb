# require 'product'
# require 'extend_enumerable'

class Order
  # products -- a list of monies
  attr_accessor :full_name, :date, :products

  def initialize(full_name, date, products)
    @full_name = full_name
    @date = date
    @products = products
  end

  def total_amount
    return 0 if products.empty?
    products.map(&:value).sum
  end
end
