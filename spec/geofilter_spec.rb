require 'spec_helper'

describe GeoFilter do 
  class FakeModel < Sequel::Model; end

  let(:filter) { GeoFilter.new(FakeModel, {state: 'WA'}) }

  it 'exposes its grouping' do 
    expect(filter.grouping).to eq({state: 'WA'})
  end

  it 'exposes its model class' do 
    expect(filter.model).to eql FakeModel
  end

  describe '#filter!' do
    it 'queries the model with its grouping' do 
      expect(FakeModel).to receive(:where).with({state: 'WA'})
      filter.filter!
    end
  end
end