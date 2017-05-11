require './lib/node'
class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    else
      current_node = head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end

  def count
    count = 0
    pointer = @head
    while pointer != nil
      pointer = pointer.next_node
      count += 1
    end
    count
  end

  def to_string
    current = @head
    string = ""
    string << current.data + " "
    until current.next_node == nil
      current = current.next_node
      string = string + current.data + " "
    end
    string.chop
  end

  def prepend(data)
    # assigns temp vairable to head
    temp = @head
    # assigns head to new instance of Node
    @head = Node.new(data)
    # assign the value at head to head's next node,
    # which is then assigned to temp, to loop through
    # and prepend the new input
    @head.next_node = temp

  end

  def insert(node, data)
    current = @head
    #loops through the list, if current node is nil will return string below
    #otherwise it will traverse the list
    (node -1).times do
      if current.nil?
        p "List not long enough"
      else
        current = current.next_node
      end
    end
    #makes new instance of Node
    new_node = Node.new(data)
    #connects new node to current node's next node
    new_node.next_node = current.next_node
    #connects current node to new node
    current.next_node = new_node
  end

  # I know this find method doesn't work, it was just what I waas working on before bed
  def find(index, amt)
    current = @head
    data = @data
    amt = 0
    while current != nil
      if current.data == data
        current.data
      else
        current = current.next_node
      end
      amt += 1
    end
    data
  end
end
