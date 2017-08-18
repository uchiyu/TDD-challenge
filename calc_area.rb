class Circle
  def initialize
  end

  def calc_area(num)
    @radius = num
    area = @radius * @radius * 3.14
    return area.round
  end

  attr_accessor :radius
end
