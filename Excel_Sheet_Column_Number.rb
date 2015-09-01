# @param {String} s
# @return {Integer}

def title_to_number(s)
  result = 0
  n = s.length
  n.times do |i|
    result *= 26
    result += s[i].tr("A-Z", "1-9a-q").to_i(27)
  end
  result
end
