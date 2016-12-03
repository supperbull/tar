require 'product'

RSpec.describe Product do
  it '#name' do
    product = instance_double('product', name: 'beer')
    expect(product.name).to eq 'beer'
  end

  it '#price' do
    money = instance_double('money', currency: 'USD', value: 10)
    product = instance_double('product', price: money)

    expect(product.price.value).to eq 10
    expect(product.price.currency).to eq 'USD'
  end
end
