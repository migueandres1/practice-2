
class Block 
  def initialize(properties )
    @width = properties[0]
    @length = properties[1]
    @height = properties[2]
  end 
  
  def get_width()
    @width
  end

  def get_length()
    @length
  end

  def get_height()
    @height
  end
  def get_volume()
    volume = @length * @width * @height
    volume 
  end

  def get_surface_area()
    surface_area = 2 * (@length * @height) + 2 * (@width * @height) + 2 * (@length * @width)
    surface_area
  end  
end 

b = Block.new([2,4,6])

puts b.get_width()
puts b.get_length()
puts b.get_volume()
puts b.get_surface_area()