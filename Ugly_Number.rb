# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    return false if num < 1
    while (num % 2 == 0)  
        num = num/2  
    end
    while (num % 3 == 0)  
        num = num/3  
    end
    while (num % 5 == 0)  
        num = num/5  
    end
    return num == 1
end