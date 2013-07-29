module Chopper
  def self.chop(needle, haystack)
    #return -1 unless haystack.include? needle
    
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
    
    # index = 0
    # index += 1 until haystack[index] == needle
    # index
  end
end