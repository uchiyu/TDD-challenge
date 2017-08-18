require './stack'
require 'RSpec'

RSpec.describe 'Stack' do
  subject { @stack }
  before do
   @stack = Stack.new
  end
  describe '#is_empty' do
   it '空の場合 true' do
     expect(@stack.is_empty?).to eq true
   end

   it 'それ以外 false' do
    @stack.internal_array = [1, 2]
    expect(@stack.is_empty?).to eq false
   end
  end

  describe '#size' do
   it '配列のサイズを返す' do
    @stack.internal_array = [1, 2]
    expect(@stack.size).to eq 2
   end
  end
end
