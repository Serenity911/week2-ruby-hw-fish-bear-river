class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = Array.new()
  end

  def populate_with_fish(fish_names)
    for name in fish_names
      @fish <<  Fish.new(name)
    end
  end

  def lose_a_fish()
    @fish.shift()
  end

  def fish_counter
    @fish.length
  end

end
