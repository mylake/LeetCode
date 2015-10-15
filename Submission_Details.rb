# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    result = Array.new(3)
    result[0] = 1
    result[1] = 1
    
    (2..n).each do |i|
        result[i] = result[i-1] + result[i-2]
    end
    
    result[n]
end