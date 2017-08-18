class Circle
  def initialize
  end

  def self.to_list(str)
    str.split("\n").map{|num| num.to_f}
  end

  def self.calc_area(num)
    @radius = num
    area = @radius * @radius * 3.14
    return area.round
  end

  def self.output(writer, str_list)
    result_list = []
    self.to_list(str_list.to_s).each do |num|
      result_list.push(self.calc_area(num))
    end
    writer.write(result_list)
  end

  attr_accessor :radius
end

class Writer
  def write(str_list)
    str_list.each do |num|
      puts num
    end
  end
end

class WriterSpy
  def write(str_list)
    @str_list = str_list
  end
  attr_accessor :str_list
end
