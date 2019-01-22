class Bear

  attr_reader :name, :type, :collection_of_food

  def initialize(name, type)
    @name = name
    @type = type
    @collection_of_food = []
  end

end
