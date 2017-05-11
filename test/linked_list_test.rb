require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test
  def test_head
    list = LinkedList.new
    list.head
    assert_nil list.head
  end

  def test_append_to_list
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("pizza")
    assert_equal "pizza", list.head.next_node.data
    list.append("drip")
    assert_equal "drip", list.head.next_node.next_node.data
  end

  def test_if_list_is_new_instance
    list = LinkedList.new
    #list
    assert_instance_of LinkedList, list
  end

  def test_does_head_move_value_to_next_node
    list = LinkedList.new
    list.append("boo")
    list.head.next_node
    assert_nil list.head.next_node
  end

  def test_can_it_count
    list = LinkedList.new
    list.append("boo")
    list.append("boom")
    list.append("plop")
    list.append("whoosh")
    list.append("bah")
    assert_equal 5, list.count

  end

  def test_can_it_string
    list = LinkedList.new
    list.append("doop")
    list.append("what")
    assert_equal "doop what", list.to_string
  end

  def test_can_it_add_to_start_of_list
    list = LinkedList.new
    list.append("boo")
    list.append("bam")
    list.prepend("plop")
    assert_equal "plop", list.head.data
  end

  def test_can_it_insert
    list = LinkedList.new
    list.append("choo")
    list.append("boo")
    list.insert(1, "woo")
    assert_equal "woo", list.head.next_node.data
  end

  def test_can_it_find
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shu", list.find(2, 1)
  end
end
