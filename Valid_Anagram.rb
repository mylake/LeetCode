# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
   return false if s.length != t.length
   sorted_s = s.chars.sort.join
   sorted_t = t.chars.sort.join
   
   if sorted_s == sorted_t
       return true
   else
       return false
   end
end