require_relative "stack"

class SmartStack < Stack

    def initialize(num)
        @max_size = num
        super()

    end

    def max_size
        @max_size
    end

    def full?
        size == @max_size
    end

    def push(*args)
        raise 'stack is full' if size + args.length > max_size
        args.each do |el|
            @underlying_array << el
        end
        size
    end

    def pop(n=1)
        arr = []
       n.times{ arr << @underlying_array.pop}
        arr
    end

end