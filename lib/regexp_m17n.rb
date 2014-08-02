module RegexpM17N
  def self.non_empty?(str)
    regexp = '^.+$'
    if Encoding.compatible?(str, regexp) 
      regexp = Regexp.new(regexp)
    else
      regexp = Regexp.new(regexp.encode(str.encoding), Regexp::FIXEDENCODING)
    end
    str =~ regexp
  end
end
