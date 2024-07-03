require_relative "lib/linked_list"
require_relative "lib/node"

linked_list = LinkedList.new

test_node_a = Node.new(15)
test_node_b = Node.new(63)
test_node_c = Node.new(82)
test_node_d = Node.new(6)
test_node_e = Node.new(50)

puts "These are the tests for my first linked list!"
puts

puts linked_list # Linked list is empty.
puts

puts "Adding two nodes [15, 63]"
linked_list.add_first(test_node_a)
linked_list.append(test_node_b)

puts linked_list
puts

puts "Prepending one node [50]"
linked_list.prepend(test_node_e)

puts linked_list
puts

puts "The linked list's head is (#{linked_list.head.value})"

puts "As for the tail, it's (#{linked_list.tail.value})"

puts "The linked list has #{linked_list.size} elements in total."
puts

puts "At index 2, the value is #{linked_list.at(2)}"

result = linked_list.contains?(42)
puts "Does the linked list contain the value (42)? -> #{result}"
puts

puts "Popping last node from the list -> #{linked_list.pop}"
puts linked_list
