def bubble_sort(array)
    loop do
        sorted = true
        array.each_with_index do |num, index|
            if index + 1 < array.length && num > array[index + 1]
                array[index], array[index + 1] = array[index + 1], array[index]
                sorted = false
            end
        end
        break if sorted
    end
    array
end