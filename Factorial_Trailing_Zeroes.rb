# @param {Integer} n
# @return {Integer}

def trailing_zeroes(n)
  ret = 0
  while(n > 0) do
    n = n/5
    ret =ret + n
  end
  ret
end
