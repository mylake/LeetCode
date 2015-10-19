class Queue
    # Initialize your data structure here.
    def initialize
        @data = []
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        @data << x
    end

    # @return {void}
    def pop
        @data.shift
    end

    # @return {Integer}
    def peek
        @data[0]
    end

    # @return {Boolean}
    def empty
        return true if @data.length == 0
        return false
    end
end