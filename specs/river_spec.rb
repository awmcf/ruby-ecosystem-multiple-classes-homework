require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Dory")
  end


  def test_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_collection_of_fish_starts_empty()
    assert_equal(0, @river.collection_of_fish_length())
  end

  def test_loses_fish()
    @river.loses_fish(@fish_1)
    assert_equal(0, @river.collection_of_fish_length)
  end

end
