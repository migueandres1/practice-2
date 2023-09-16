# Excercise 6

Create a class Vector that has simple (3D) vector operators.

In your class, you should support the following operations, given Vector a and Vector b:

```ruby
a + b # returns a new Vector that is the resultant of adding them
a - b # same, but with subtraction
a == b # returns true if they have the same magnitude and direction
a.cross(b) # returns a new Vector that is the cross product of a and b
a.dot(b) # returns a number that is the dot product of a and b
a.to_a # returns an array representation of the vector.
a.to_s # returns a string representation of the vector in the form "<a, b, c>"
a.magnitude # returns a number that is the magnitude (geometric length) of vector a.
a.x # gets x component
a.y # gets y component
a.z # gets z component
Vector.new([a,b,c]) # creates a new Vector from the supplied 3D array.
Vector.new(a,b,c) # same as above
```
## Support Material
- **[Adding and Substracting Vectors](https://youtu.be/fNk_zzaMoSs?si=EKM0BteFzOAThD7I)**
- **[Dot product](https://youtu.be/LyGKycYT2v0?si=Nb03-85lYVMiiIMc)**
- **[Cross Product](https://youtu.be/eu6i7WJeinw?si=NS5ncHDwpKCxVhKu)**
