class Circle
  def initialize
  end

  def self.to_list(str)
    str.split('\n').map{|num| num.to_f}
  end

  def self.calc_area(num)
    @radius = num
    area = @radius * @radius * 3.14
    return area.round
  end

  def self.output(array)
    array.join('\n')
  end

  attr_accessor :radius
end
