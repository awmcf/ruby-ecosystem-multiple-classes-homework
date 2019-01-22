require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish_1 = Fish.new("nemo")
  end

  def test_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_collection_of_food_starts_empty()
    assert_equal(0, @bear.collection_of_food_length())
  end

  def test_snag_fish_for_food()
    @bear.snag_fish(@fish_1)
    assert_equal(1, @bear.collection_of_food_length())
  end


end
