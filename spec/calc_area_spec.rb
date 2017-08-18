require './circle'
require 'RSpec'

RSpec.describe 'circle' do

  describe '標準入力の確認' do
    let(:str_list) { StringIO.new("10\n250\n100\n1.5\n", 'r') }
    it { expect( Circle.to_list(str_list.string)).to eq [10, 250, 100, 1.5]}
  end

  describe 'calc_area' do
    context '引数が整数の場合' do
      let(:any) { 10 }
      it { expect( Circle.calc_area(any)).to eq 314 }
    end
    context '引数が実数の場合' do
      let(:any) { 1.5 }
      it { expect( Circle.calc_area(any)).to eq 7 }
    end
  end

  describe '結果の確認' do
    let(:str_list) { StringIO.new("10\n250\n100\n1.5\n", 'r') }
    let(:writerspy) { WriterSpy.new }
    it {
      Circle.output(writerspy, str_list)
      expect(writerspy.str_list).to eq [314, 196350, 31416, 7]
    }
  end

end
