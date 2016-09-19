class Display
  attr_accessor :cursor

  def initialize
    @cursor = Array.new()
    @notifications = {}
  end

  def move(new_pos)
  end

  def render
  end

end
