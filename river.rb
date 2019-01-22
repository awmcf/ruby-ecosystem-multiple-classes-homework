class River

  attr_reader :name, :collection_of_fish

  def initialize(name)
    @name = name
    @collection_of_fish = []
  end

  def add_to_queue(person)
    @queue.push(person)
  end

end
