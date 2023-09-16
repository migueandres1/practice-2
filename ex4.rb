class Person
  def initialize(name)
    @name = name
  end

  def greet(your_name)
    "Hello #{your_name}, my name is #{@name}"
  end
  def name 
    @name
  end
 joe = Person.new('Joe')
 puts joe.greet('Kate') 
 puts joe.name         
end
