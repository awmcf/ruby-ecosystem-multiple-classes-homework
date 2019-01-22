class Bear

  attr_reader :name, :type, :collection_of_food

  def initialize(name, type)
    @name = name
    @type = type
    @collection_of_food = []
  end

  def collection_of_food_length()
    return @collection_of_food.length()
  end

  def snag_fish(fish)
    @collection_of_food.push(fish)
  end

end
