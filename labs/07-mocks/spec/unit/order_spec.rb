require 'order'

describe Order do
  subject { Order.new(full_name, date, list).products }

  let(:full_name) { 'Biedronka' }
  let(:date) { '2016-12-02' }

  context '#products' do
    # lazy evaluation of list
    context 'without products' do
      let(:list) { [] }

      it 'returns empty array' do
        expect(subject).to eq []
      end
    end

    context 'with products' do
      let(:list) { [double, double] }

      it 'returns array of objects' do
        expect(subject).to be_kind_of(Array)
      end
    end
  end

  context '.sum' do
    pending 'should be tested in integration'
  end
end
