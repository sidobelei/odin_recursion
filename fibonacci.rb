def fibs(length)
    f0 = 0
    f1 = 1
    array = []
    if length == 1
        array.push(f0)
    elsif length > 1
        array.push(f0)
        array.push(f1)
        index = 2
        while index < length
            sum = array[index - 1] + array[index - 2]
            array.push(sum)
            index += 1
        end
    end
    return array
end

def fibs_rec(length, array = []) 
    if length == 0
        return array
    end
    if length == 1
        array.push(0)
        return [0]
    elsif length == 2
        array.push(0)
        array.push(1)
        return [0, 1]
    else
        length -= 1
        array = fibs_rec(length, array)
        f0 = array[length - 2]
        f1 = array[length - 1]
        array.push(f0 + f1)
        return array   
    end
end