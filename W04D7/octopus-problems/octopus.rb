

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']

def quadratic_octopus(arr)
   ans = ""
    top = arr.length - 1
    arr.each_with_index do | word, i|
        arr[i+1...-1].each do |j|

            if word.length > j.length
            ans = word     
            end
        end
    end
    ans
    
end
# p quadratic_octopus(arr)


class Array
    def merge_sort(&prc)
        prc ||= Proc.new{|x,y| x <=> y }
        return self if self.length <= 1

        mid = size / 2
        sorted_left = self.take(mid).merge_sort(&prc)
        sorted_right = self.drop(mid).merge_sort(&prc)
        merge(sorted_left, sorted_right, &prc)

    end
    def merge(left, right, &prc)
        merged = []

        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                 merged << right.shift
            end
        end
            merged + left + right
    end 
end

def sort_octopus(arr)
    prc = Proc.new {|x,y| x.length <=> y.length}
    ans = arr.merge_sort(&prc)
    ans.last
end

# p sort_octopus(arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
    "left",  "left-up"]

    def slow_dance(dir, arr)

        arr.each_with_index do | el, i |
            if dir == el
                return i
            end
        end
    end

    p slow_dance("right", tiles_array)
    # constant octopus dance
# use a hash for constant lookup
tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

    def fast_dance(dir, hash)
        hash[dir]
    end

    p fast_dance("left", tiles_hash)






           
                