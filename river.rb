class River

attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = Array.new(100)
  end

  def lose_a_fish()
    @fish.shift()
  end

  def fish_counter
    @fish.length
  end

end
