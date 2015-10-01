# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    bin_represent = n.to_s(2)
    origin_length = bin_represent.length
    changed_length = bin_represent.gsub("1", "").length
    return origin_length - changed_length
end