class Potion
  attr_reader :color, :volume

  def initialize(color, volume)
    @color = color
    @volume = volume
  end

  def mix(other_potion)
    mixed_color = mix_colors(@color, other_potion.color)
    mixed_volume = @volume + other_potion.volume
    Potion.new(mixed_color, mixed_volume)
  end

  private

  def mix_colors(color1, color2)
    mixed_color = []
    3.times do |i|
      mixed_color[i] = ((color1[i] + color2[i]) / 2.0).ceil
    end
    mixed_color
  end
end


felix_felicis = Potion.new([255, 153, 250], 8)
shrinking_solution = Potion.new([51, 102, 51], 12)
new_potion = felix_felicis.mix(shrinking_solution)

puts "Mixed Color: #{new_potion.color}"
puts "Mixed Volume: #{new_potion.volume}"
