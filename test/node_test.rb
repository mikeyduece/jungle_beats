require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"

class NodeTest < Minitest::Test
  def test_data
     node = Node.new("plop")
     node.data
     assert_equal "plop" , node.data
  end
  def test_is_next_node_nil
    node = Node.new("plop")
    node.next_node
    assert_nil node.next_node

  end

end
