# Ecercise 2

The following code was thought to be working properly, however when the code tries to access the age of the person instance it fails.

```ruby
person = Person.new('Yukihiro', 'Matsumoto', 47)
puts person.full_name
puts person.age
```
For this exercise you need to fix the code so that it works correctly.

Note: the order of the person's full name is first name and last name.

## Person Class

```ruby
class Person
  def initialize(firstName, lastName, age)
    @firstName = firstName
    @lastName = lastName
    @age = age
  end
  
  def full_name
    "#{@firstName} #{@lastName}"
  end
end
```

**[Reference:](https://www.codewars.com/kata/513f887e484edf3eb3000001)**