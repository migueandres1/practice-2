

class Ship
  def initialize(draft,crew)
    @draft=draft
    @crew=crew
  end
  
  def is_worth_it?
    (@crew * 1.5) - @draft > 20 ? true : false 
  end
end

titanic = Ship.new(15,10)

puts titanic.is_worth_it?