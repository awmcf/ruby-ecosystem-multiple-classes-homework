require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish_1 = Fish.new("nemo")
    @river_1 = River.new("Amazon")
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

  def test_river_loses_fish()
    @bear.snag_fish(@fish_1)
    @river.loses_fish(@river_1)
    assert_equal(1, @bear.collection_of_food_length())
    assert_equal(0, @river.collection_of_fish_length())
  end

  # def test_pick_up_from_stop()
  #   @stop1.add_to_queue(@passenger1)
  #   @bus.pick_up_from_stop(@stop1)
  #   assert_equal(1, @bus.passenger_count())
  #   assert_equal(0, @stop1.queue_length())
  # end

end
