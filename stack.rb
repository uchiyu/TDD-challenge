class Stack
  def initialize
    @internal_array = []
  end

  def is_empty?
    @internal_array.empty?
  end

  attr_accessor :internal_array
end
