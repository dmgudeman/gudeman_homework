

class MyQueue

    def initialize
        @store = []
    end
    
    def peek
        @store[-1]
    end
    
    def size
        @store.length
    end

    def empty?
        self.size == 0
    end
    
    def enqueue(item)
        @store.push(item)
    end
    
    def dequeue
        @store.shift
    end

end