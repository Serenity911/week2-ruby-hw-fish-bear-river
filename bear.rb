class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def catch_a_fish_from_river(river)
    @stomach << river.fish.shift()
  end

  def can_roar
    return "Roar Roar"
  end

  def food_counter
    @stomach.length
  end

end
