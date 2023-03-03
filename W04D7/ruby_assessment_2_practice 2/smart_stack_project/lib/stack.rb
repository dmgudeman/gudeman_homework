
class Stack

    def initialize
        @underlying_array = []
    end

    def size
        @underlying_array.size
    end

    def empty?
        @underlying_array.empty?
    end

    def top
        @underlying_array[-1]
    end

    def peek(n) 
        @underlying_array[-n..-1]
    end

    def push(item)
        @underlying_array.push(item)
        size
    end
    def pop
        return nil if size == 0
        @underlying_array.pop
    end

end