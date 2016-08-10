require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoo_order')

class TestShooOrder < Minitest::Test
  def setup
    options = {
      'full_name' => "Franky Mcfrankfurt",
      'address' => "Idunno street, Idaho",
      'quantity' => "3",
      'size' => "7",
      'shoe_type' => "No1",
      'id' => 1
    }
    @order = ShooOrder.new(options)
  end

  def test_has_attributes
    assert_equal("Franky Mcfrankfurt",@order.full_name)
    assert_equal("Idunno street, Idaho",@order.address)
    assert_equal(3,@order.quantity)
    assert_equal(7,@order.size)
    assert_equal("No1",@order.shoe_type)
    assert_equal(1,@order.id)
  end

end