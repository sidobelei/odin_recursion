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