class River

  attr_reader :name, :collection_of_fish

  def initialize(name)
    @name = name
    @collection_of_fish = []
  end

  def collection_of_fish_length()
    return @collection_of_fish.length()
  end

  def loses_fish(fish)
    @collection_of_fish.pop
  end



end
