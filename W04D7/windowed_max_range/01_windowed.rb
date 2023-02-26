


def windowed(arr, w)
  ans = 0

    (0..arr.length - w).each do |i|
        # p arr[i]
        # p arr[w+i]
        temp = arr[w+i-1] - arr[i]
        ans = temp if temp > ans
    end
    ans
end

arr = [1,2,3,5]
p windowed(arr, 3)