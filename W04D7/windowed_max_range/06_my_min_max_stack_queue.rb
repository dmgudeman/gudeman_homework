
require_relative "04_my_stack_queue"

class MyMinMaxStackQueue

    def initialize
        def enqueue(val)
            @store.push(val)
            @min.push(val) if val < @min.last
            @max.push(val) if val > @max.last
    
    
        end
    
        def dequeue
           temp =  @store.reverse.pop
            @min.pop if temp < @min.last
            @max.pop if temp > @max.last
        end
    end
end
