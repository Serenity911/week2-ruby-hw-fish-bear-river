class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def catch_a_fish_from_river(river)
    @stomach << river.lose_a_fish()
  end

  def get_roar
    message = "Roar Roar"
    puts message
    return message
  end

  def food_counter
    @stomach.length
  end

end
