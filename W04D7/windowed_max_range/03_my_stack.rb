

class MyStack

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
    
    def push(item)
        @store.push(item)
    end
    
    def pop
        @store.pop
    end
end

