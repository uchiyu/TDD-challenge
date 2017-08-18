require './stack'
require 'RSpec'

RSpec.describe 'Stack' do
  subject { @stack }
  before do
   @stack = Stack.new
  end
  describe '#is_empty' do
   it '空の場合true' do
     expect(@stack.is_empty?).to eq true
   end
  end
end
