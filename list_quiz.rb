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
