def three_even(list)

    (list.size - 2).times do |i|
        if list[i]%2 == 0 && list[i + 1]%2 == 0 && list[i + 2]%2 == 0
            return true
        end
    end

    return false
end

# puts three_even([2, 1, 3, 5]) #false
# puts three_even([2, 4, 12, 5]) #true
# puts three_even([2, 1, 4, 6]) #false
# puts three_even([1, 4, 6, 4]) #true
# puts three_even([]) #false

def bigger_two(list1, list2)
    set1 = list1[0] + list1[1]
    set2 = list2[0] + list2[1]

    if set1 > set2
        return list1
    end

    if set2 > set1
        return list2
    end

    if set1 = set2
        return list1
    end
end

# puts bigger_two([1, 2], [3, 4]) #[3, 4]
# puts bigger_two([1, 7], [4, 4]) #[1, 7]

def series_up(num) #started over
    set = 0
    list = [] # we know that the list starts empty

    num.times do |pattern|
        n = 0 # original number
        num.times do |num|
            list[n + set] = n + 1
            n += 1
        end
        set += pattern + 1
        # tells the number to keep growing
    end
    return list
end
# changed puts to print so it was easier to see
print series_up(1) # [1]
print series_up(2) # [1, 1, 2]
print series_up(3) # [1, 1, 2, 3, 1, 2, 3]
print series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]