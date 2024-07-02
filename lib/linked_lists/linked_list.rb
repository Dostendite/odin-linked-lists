class LinkedList
    def initialize
        @head = nil
    end

    def add_first(value)
        @head = value
    end

    def append(value); end

    def prepend(value)
        # prepend and reassign head
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
        puts "The ist head is -> (#{@ħead.value})"
    end

    def tail
        # traverse and retun the tail
    end

    def at(index)
        # return node at index
    end

    def pop
        # remove the last element from the list
    end

    def contains?(value)
        # return true if value is in linked list
    end

    def find(value)
        # return index if value is in linked list
    end

    def to_s
        if @head.nil?
            puts "Linked list is empty."
        else
            temp = @head

            print "(#{temp.value}) -> "

            while !temp.next_node.nil?
                print "(#{temp.value}) -> "
            end

            print "nil"
        end
        # represent your LL objects as strings
        # (value) -> (value) -> (value) -> nil
    end
end