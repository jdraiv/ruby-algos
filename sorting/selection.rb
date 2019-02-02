
require './tester'

def selection_sort(arr)
    for index in 0...arr.length - 1 do
        counter = index + 1
        lowest_index = index

        while counter <= arr.length - 1
            if arr[counter] < arr[index]
                lowest_index = counter
            end
            counter += 1
        end

        if lowest_index != index
            arr[index], arr[lowest_index] = arr[lowest_index], arr[index]
        end
    end
    return arr
end

test_algo([5,4,3,2,1], method(:selection_sort))
test_algo([1,0,3,5,9,0], method(:selection_sort))