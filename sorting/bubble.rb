
require './tester'


def insertion_sort(arr)
    pivot = arr.length - 1
    
    while pivot > 0
        for num in 0...pivot do
            if arr[num + 1] < arr[num]
                arr[num], arr[num + 1] = arr[num + 1], arr[num]
            end
        end

        pivot -= 1
    end
    return arr
end


test_algo([5,4,3,2,1], method(:insertion_sort))
test_algo([3,2,1,4,6,2,5,90,21,78], method(:insertion_sort))
test_algo([3,7,4,1,4,5,1,5,0,0,0,3,1,907,23], method(:insertion_sort))