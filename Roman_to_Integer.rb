# @param {String} s
# @return {Integer}

require 'pry'

def roman_to_int(s)
  romanTable = {
    "I"=> 1,
    "V"=> 5,
    "X"=> 10,
    "L"=> 50,
    "C"=> 100,
    "D"=> 500,
    "M"=> 1000
  }
  return 0 unless s

  length = s.length
  sum = pre = 0
  length_1 = length -1
  length_1.downto(0) do |i|
    cur = romanTable[s[i]] || 0
    if i == length_1
      sum = sum + cur
    else
      if cur < pre
        sum = sum - cur
      else
        sum = sum + cur
      end
    end
    pre = cur
  end
  sum
end

s = "MDCCCLXXXIV"
puts roman_to_int(s)
