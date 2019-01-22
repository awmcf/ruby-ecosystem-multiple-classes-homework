require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("nemo")
  end

  def test_has_name
    assert_equal("nemo", @fish.name)
  end

end
