# @param {Integer} n
# @return {Boolean}
def is_happy(n)
   return false if n < 0 
   while (n != 1)
    ns = n.to_s.split('')
    n = 0
    ns.each do |data|
        n = n + data.to_i * data.to_i
    end
    return false if n.to_s.length ==1 && n != 1
   end
   return true
end