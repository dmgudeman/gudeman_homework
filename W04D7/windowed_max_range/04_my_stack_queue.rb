
 require_relative "03_my_stack.rb"

class MyStackQueue < MyStack
    

    def initialize
        super
        @min = []
        @max = []

    end

    def enqueue(val)
        @store.push(val)
        @max = val if val > @max
        @min = val if val < @min
    end

    def dequeue
       temp =  @store.reverse.pop 
    end

end

s = MyStackQueue.new
p s.push(8)












