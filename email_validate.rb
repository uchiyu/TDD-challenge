class EmailValidate
  def initialize
  end

  def self.split_addr(addr)
    return ["", ""] unless addr.include?("@")
    [addr.reverse.match(/@/).post_match.reverse, addr.reverse.match(/@/).pre_match.reverse]
  end

  def self.validate_domain

  end
end

# class Writer
#   def write(str_list)
#     str_list.each do |num|
#       puts num
#     end
#   end
# end
#
# class WriterSpy
#   def write(str_list)
#     @str_list = str_list
#   end
#   attr_accessor :str_list
# end
