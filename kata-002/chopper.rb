module Chopper
  def self.chop(needle, haystack)
    index = 0
    while index < haystack.size
      break if haystack[index] == needle
      index +=1
    end
    
    if haystack[index] == needle
      index
    else
      -1
    end
  end
end