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
  
#Part 4
  
  def grade(grade)
    roster[grade]
  end

#Part 5

  def sort
    sorted = {}
    roster.each do |key, values|
      sorted[key] = values.sort
    end
    sorted
  end
end  

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.roster
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
school.grade(9)
school.sort