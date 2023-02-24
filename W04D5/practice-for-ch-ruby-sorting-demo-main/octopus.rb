
FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']

# def sluggish
#     ans = FISH[0]
#     (0...FISH.length).each do | i|
#         (i+1...FISH.length).each do |j|
#             if FISH[i].length < FISH[j].length
#                 ans = FISH[j]
#             end
#         end
#     end
#     ans
# end

# p sluggish

public
def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        case left[0] <=> right[0]
        when -1 
            merged << left.shift
        when 0
            merged << left.shift
        when 1
            right << right.shift
        end
    end
    merged + left + right
end

 def dominant(arr)
   
 
    # prc ||= Proc.new{|x,y| x <=> y}
    return arr if arr.length <= 1
    mid = arr.length / 2

    left = dominant(arr[0...mid])
    right = dominant(arr[mid..-1])

    merge(left, right)
     p arr

end
  #-----
#    p left
#    p right
#     sorted = []
#     ileft = 0
#     iright = 0

#     # while sorted.length < arr.length
#     if left.empty? || right.empty?
#             return sorted + left + right
    
#     elsif left[ileft] < right[iright]
#         sorted << left[ileft]
#         ileft += 1
#     else
#         sorted << right[iright]
#         iright += 1
#     end
    
#     # end

# end

print dominant(FISH)

# def clever 
#     longest = ""
#     FISH.each do | el |
#         if el.length > longest.length
#             longest = el
#         end
#     end
#     longest
# end

# p clever
