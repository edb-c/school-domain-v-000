class School
#Part 1 and 2

  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
#Part 3

  def add_student(name, grade)
    if @roster[grade] == nil
       @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end
  
  