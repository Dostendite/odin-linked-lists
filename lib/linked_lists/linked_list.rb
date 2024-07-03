require 'pry-byebug'

class LinkedList
    def initialize
        @head = nil
    end

    def add_first(value)
        @head = value
    end

    def append(value)
        if @head.nil?
            @head = value
        else
            temp = @head

            while !temp.next_node.nil?
                temp = temp.next_node
            end

        temp.next_node = value
        end
    end

    def prepend(value)
        temp = @head

        @head = value

        value.next_node = temp
    end

    def size
        counter = 0
        return counter if @head.nil?

        temp = @head
        counter += 1

        while !temp.next_node.nil?
            counter += 1
            temp = temp.next_node
        end
        counter
    end

    def head
        @head
    end

    def tail
        temp = @head
        while !temp.next_node.nil?
            temp = temp.next_node
        end
        temp
    end

    def at(index)
        temp = @head

        return self.tail.value if index > self.size

        until index == 0
            temp = temp.next_node
            index -= 1
        end
        temp.value
    end

    def pop
        temp = @head
        prev = nil

        while !temp.next_node.nil?
            prev = temp
            temp = temp.next_node
        end

        prev.next_node = nil
        temp.value
    end

    def contains?(value)
        # return true if value is in linked list
    end

    def find(value)
        # return index if value is in linked list
    end

    def to_s
        if @head.nil?
            return "Linked list is empty."
        else
            temp = @head

            ret_string = "(#{temp.value}) -> "
            
            while !temp.next_node.nil?
                temp = temp.next_node
                ret_string << "(#{temp.value}) -> "
            end

            ret_string << "nil"
        end
    end
end