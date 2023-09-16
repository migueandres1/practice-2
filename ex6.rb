
class Vector
  def initialize(*args)
    @i = args[0]
    @j = args[1]
    @k = args[2]
  end

  def +(other_vector)
    new_i = @i + other_vector.x
    new_j = @j + other_vector.y
    new_k = @k + other_vector.z

    Vector.new(new_i, new_j, new_k)
  end
  
  def -(other_vector)
    new_i = @i - other_vector.x
    new_j = @j - other_vector.y
    new_k = @k - other_vector.z

    Vector.new(new_i, new_j, new_k)
  end

  def ==(other_vector)
    other_i = other_vector.x
    other_j = other_vector.y
    other_k = other_vector.z
    if other_i == @i && other_j == @j && other_k == @k
      true
    else 
      false 
    end
  end

  def  cross(other_vector)
    other_i = other_vector.x
    other_j = other_vector.y
    other_k = other_vector.z
    
    i = (@j * other_k) - (@k * other_j) 
    j = (@i * other_k) - (@k * other_i)
    k = (@i * other_j) - (@j * other_i)
    
    cross_product = Vector.new(i,-j,k)
    cross_product
  end

  def dot(vector)
    i = @i * other_vector.x
    j = @j * other_vector.y
    k = @i * other_vector.z
    
    dot_pruduct = i+j+k
    dot_pruduct
    
  end 

  def to_a
    [@i,@j,@k]
  end
  
  def to_s
    "<#{@i}, #{@j}, #{@k}>"
  end

  def magnitude
    magnitude = Math.sqrt((@i**2)+ (@j**2) + (@k**2))
    magnitude 
  end

  def x; @i; end

  def y; @j; end

  def z; @k; end
  
end

a = Vector.new(1, 3, 4)
b = Vector.new(3, 4, 5)

result = a + b
puts result.to_s # Outputs: (4, 7, 9)
