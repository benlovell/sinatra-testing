class Person
  attr_reader :name, :surname, :age
  
  def initialize(name, surname, age)
    @name = name
    @surname = surname
    @age = age
  end
  
  def to_s
    "#{name} #{surname}, #{age}"
  end
end