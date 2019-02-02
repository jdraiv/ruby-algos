
require './tester'


def insertion_sort(arr)
    arr.each_with_index do |num, index|
        new_index = index
        counter = index

        while counter > 0
            counter -= 1

            if num < arr[counter]
                new_index = counter
            end
        end

        if new_index != index
            arr.insert(new_index, num)
            arr.delete_at(index + 1)
        end
    end
    return arr
end

test_algo([5,4,3,2,1], method(:insertion_sort))
test_algo([1,6,2,9,0,1,99,156,2,5], method(:insertion_sort))