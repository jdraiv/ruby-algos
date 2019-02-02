

require 'test/unit/assertions'


def test_algo(arr, algo, failure_message="Wrong answer")
    # This method use the sort built in function of Ruby to test sorting algorithms
    arr_copy = arr.dup
    result = algo.call(arr_copy)
    expected = arr.sort!

    if expected == result
        puts "Success. Result [%s]" % result.join(',')
    else
        puts "%s. Result: [%s], Expected Result: [%s]" % [failure_message, result.join(','), expected.join(',')]
    end
end