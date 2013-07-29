module Chopper
  def self.chop(needle, haystack)
    return -1 if haystack.size == 0 || (haystack.size == 1 && !haystack.include?(needle))
    return 0 if haystack.size == 1 && haystack.include?(needle)

    half_way = (haystack.size / 2)

    haystack1 = haystack[0..half_way-1]
    haystack2 = haystack[half_way..-1]
    
    if needle > haystack1.last
      location = index_of(needle, haystack2)
      location += haystack1.size if location != -1
      location
    else
      index_of(needle, haystack1)
    end    
  end

  private

  def self.index_of(needle, haystack)
    index = 0

    while index < haystack.size
      break if haystack[index] == needle
      index +=1
    end
    
    haystack[index] == needle ? index : -1
  end
end