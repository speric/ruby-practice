module Chopper
  def self.chop(needle, haystack)
    return -1 unless haystack.include? needle
    
    index = 0
    index += 1 until haystack[index] == needle
    index
  end
end