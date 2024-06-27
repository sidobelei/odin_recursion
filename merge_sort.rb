def merge_sort(array)
    if array.length == 0
        return []
    elsif array.length == 1
        return array
    else
        left_split, right_split = array.each_slice((array.length / 2.0).round()).to_a
        unsorted_left_split = merge_sort(left_split)
        unsorted_right_split = merge_sort(right_split)
        sorted = []
        until unsorted_left_split.empty? && unsorted_right_split.empty?
            if unsorted_left_split[0].nil?
                sorted.push(unsorted_right_split[0])
                unsorted_right_split.shift
            elsif unsorted_right_split[0].nil?
                sorted.push(unsorted_left_split[0])
                unsorted_left_split.shift
            else
                if unsorted_left_split[0] <= unsorted_right_split[0]
                    sorted.push(unsorted_left_split[0])
                    unsorted_left_split.shift
                else
                    sorted.push(unsorted_right_split[0])
                    unsorted_right_split.shift 
                end
            end
        end
        return sorted
    end
end