require 'pry-byebug'

# Linked List - Dynamic linear data structure
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

      temp = temp.next_node until temp.next_node.nil?
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

    until temp.next_node.nil?
      counter += 1
      temp = temp.next_node
    end
    counter
  end

  attr_reader :head

  def tail
    temp = @head
    temp = temp.next_node until temp.next_node.nil?
    temp
  end

  def at(index)
    temp = @head

    return tail.value if index > size

    until index == 0
      temp = temp.next_node
      index -= 1
    end
    temp.value
  end

  def pop
    temp = @head
    prev = nil

    until temp.next_node.nil?
      prev = temp
      temp = temp.next_node
    end
    prev.next_node = nil
    temp.value
  end

  def contains?(value)
    # Weird bug which creates a seemingly infinite loop happens
    # whenever two identical nodes are appended.
    temp = @head

    until temp.next_node.nil?
      return true if temp.value == value || temp.next_node.value == value

      temp = temp.next_node
    end
    false
  end

  def find(value)
    temp = @head
    counter = 0

    # tail returns nil
    until temp.next_node.nil?
      return counter if temp.value == value

      temp = temp.next_node
      counter += 1
    end
    nil
  end

  def to_s
    return "Linked list is empty." if @head.nil?

    temp = @head

    ret_string = "(#{temp.value}) -> "

    until temp.next_node.nil?
      temp = temp.next_node
      ret_string << "(#{temp.value}) -> "
    end
    ret_string << "nil"
  end

  # Find a way to refactor
  def insert_at(value, index)
    temp = @head
    
    return false if index > self.size
    
    if index == 0
      self.prepend(Node.new(value))
      return
    end
    
    index -= 1

    index.times do
      temp = temp.next_node
    end
    
    temp.next_node = Node.new(value, temp.next_node)
  end

  # Refactor pending
  def remove_at(index)
    temp = @head
    prev = nil

    return false if @head.nil?

    if index == 0
      @head = @head.next_node
      return
    end

    index.times do |idx|
      idx -= 1
      prev = temp
      temp = temp.next_node
    end

    prev.next_node = temp.next_node
  end
end
