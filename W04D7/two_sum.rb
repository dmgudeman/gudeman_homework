

def bad_two_sum?(arr, target)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if (arr[i] + arr[j]) == target
        end
    end
    false
end



def bad_two_sum_a?(arr, target)
    arr.length.times  do |i|
        (arr.length - 1 - i ).times do |j|
            return true if (arr[i] + arr[j + i + 1]) == target
        end
    end
    false
end



def sort_two_sum?(arr, target)
    sorted = arr.sort

       i = 0
       j = arr.length - 1
 
  
    until i >= j
        case (sorted[i] + sorted[j]) <=> target
        when -1 
           i += 1
        when 0
            return true
        when 1
            j -= 1
        end

    end
    false
end


def hash_two_sum?(arr, target)
    hash = {}
    arr.each do |el|
        return true if hash[target - el]
        hash[el] = true 
    end
   false
end

# arr = [0, 7, 5, 1]
# p hash_two_sum?(arr, 6) # => should be true
# p hash_two_sum?(arr, 10) # => should be false







def two_sum?(arr, target)
    hash = {}

    arr.each do |el|
        return true if hash[target - el]
        hash[el] = true
    end
    false
end


arr = [0, 7, 5, 1]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

