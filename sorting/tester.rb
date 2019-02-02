

require 'test/unit/assertions'


def test_algo(arr, algo, failure_message="Wrong answer")
    # This method use the sort built in function of Ruby to test sorting algorithms

    if arr.sort == algo.call(arr)
        puts "Success"
    else
        puts failure_message
    end
end