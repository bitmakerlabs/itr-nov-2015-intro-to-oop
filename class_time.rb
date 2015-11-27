class Person

  attr_accessor :name

  def initialize(name)
    @name = name
    puts "I'm initializing a Person!"
  end

  def greet 
    puts "Hello my name is #{@name}!"
  end

end

class Instructor < Person

  def initialize(name)
    super
    puts "I'm initializing Instructor!"
  end

  def greet
    super
    puts "Hello I'm an Instructor and my name is #{@name}"
  end

end

class Student < Person

  def greet
    puts "Hello I'm a Student"
  end

end

fabio = Instructor.new("Fabio")
fabio.greet
steve = Student.new("Steve")
steve.greet

