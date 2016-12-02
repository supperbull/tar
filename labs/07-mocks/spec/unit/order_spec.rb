require 'order'

describe Order do
  let(:full_name) { 'Biedronka' }
  let(:date) { '2016-11-27T00:00:00+01:00' }
  subject { Order.new(full_name, date, products).products }

  context '#products' do
    # lazy evaluation of product
    context 'without products' do
      let(:products) { [] }

      it 'returns empty array' do
        expect(subject).to eq []
      end
    end

    context 'with products' do
      let(:products) { [double] }

      it 'returns array of objects' do
        expect(subject).to eq products
      end
    end
  end

  context '.sum' do
    pending 'should be tested in integration'
  end
end
