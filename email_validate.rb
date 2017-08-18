class EmailValidate
  def initialize
  end

  def self.split_addr(addr)
    return ["", ""] unless addr.include?("@")
    [addr.reverse.match(/@/).post_match.reverse, addr.reverse.match(/@/).pre_match.reverse]
  end

  def self.domain_1(domain)
    if domain.match(/^[A-Za-z0-9!#$%&'\*\+\-\/=\?^_`\{\|\}~\.]+$/)
      true
    else
      false
    end
  end

  def self.domain_234(domain)
    if domain.match(/(^\..+)|(.+\.$)|(\.\.)/)
      false
    else
      true
    end
  end

  def self.domain_5(domain)
    if domain.empty?
      false
    else
      true
    end
  end

  def self.validate_domain(domain)
    return false unless self.domain_1(domain)
    return false unless self.domain_234(domain)
    return false unless self.domain_5(domain)
    return true
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
