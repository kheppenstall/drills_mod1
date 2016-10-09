gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'clearance'
require_relative 'item'

class ClearanceTest < Minitest::Test

  def test_no_items_are_on_clearance
    clearance = Clearance.new
    assert_equal nil, clearance.best_deal
  end

  def test_highest_percent_off_with_one_item
    clearance = Clearance.new
    clearance << Item.new("socks", 5, 1)
    assert_equal "socks", clearance.best_deal
  end

  def test_highest_percent_off_of_many_items
    clearance = Clearance.new
    clearance << Item.new("shirt", 16, 2)
    clearance << Item.new("pants", 10, 5)
    clearance << Item.new("jacket", 30, 10)
    assert_equal "pants", clearance.best_deal
  end

end
