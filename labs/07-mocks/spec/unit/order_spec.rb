require 'order'

# https://relishapp.com/rspec/rspec-mocks/v/3-5/docs/verifying-doubles/using-an-instance-double

describe Order do
  subject { Order.new(full_name, date, list) }

  let(:full_name) { 'Biedronka' }
  let(:date) { '2016-12-02' }

  let(:product) { instance_double('Product', price: double) }

  # see also rspec-collection_matchers

  context '#products' do
    # lazy evaluation of list
    context 'without products' do
      let(:list) { [] }

      it 'returns empty array' do
        expect(subject.products).to eq []
      end
    end

    context 'with products' do
      let(:list) { [instance_double('Product'), instance_double('Product')] }

      it 'returns array of Products' do
        expect(subject.products).to be_kind_of(Array)
      end
    end
  end

  context '#monies' do
    context 'order without products' do
      let(:list) { [] }

      it 'returns empty array' do
        expect(subject.monies).to eq []
      end
    end
    context 'order with products' do
      let(:list) { [product, product] }

      it 'returns array of Monies' do
        expect(subject.monies).to be_kind_of(Array)
      end
    end
  end

  # def self.sum(arr)
  #   Money.sum arr.products.map(&:price)
  # end
  # context '.sum' do
  #   pending 'should be tested in integration'
  # end
end
