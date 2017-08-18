require './calc_area'
require 'RSpec'

RSpec.describe 'calc area' do
  subject { @circle }
  before do
    @circle = Circle.new
  end
  describe '面積を求める' do
    context '引数が整数の場合' do
      let(:any) { 10 }
      it { expect(@circle.calc_area(any)).to eq 314 }
    end
    context '引数が実数の場合' do
      let(:any) { 1.5 }
      it { expect(@circle.calc_area(any)).to eq 7 }
    end
  end
end
