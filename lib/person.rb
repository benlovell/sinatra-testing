class Person
  attr_reader :name
  attr_reader :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def to_s
    "#{name}, #{age}"
  end
end