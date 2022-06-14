class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end


class Queue
    def initialize()
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |subarray|
            if subarray[0] == key
                subarray[1] = value
                return
            end
        end
        @map << [key, value]
    end

    def get(key)
        @map.each do |subarray|
            return subarray if subarray[0] == key
        end
    end

    def delete(key)
        @map.each do |subarray|
            @map.delete(subarray) if subarray[0] == key
        end
    end

    def show
        @map
    end
end