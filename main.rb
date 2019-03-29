class University
  attr_accessor :name, :students

  def initialize(name)
    @name = name
    @students = []
  end

  def addStudent(student)
    @students << student
    student
  end

  def selection 
  	if @students.size != 0
  	 points = @students.map(&:point)
  	 average = points.inject { |sum, n| sum + n } / @students.size.to_f
  	 @students.select { |student| student.point >= average }
  	end  
  end
end

class Student
  attr_accessor :name, :point

  def initialize(name, point)
    @name = name
    @point = point
  end

end


class InternShip
  attr_accessor :name, :students

  def initialize(name)
    @name = name
    @students = []
  end

  def get_smart_students(fromUniversity)
  	@students = fromUniversity
	end

  def print
  	if @students!= nil
    @students.each do |student|
      pp "Name: #{student.name}. Point: #{student.point}"
    	end
    else 
  	 p "Zero smart students"
  	end
  end
end


class Application
  university = University.new("LNU")
  university.addStudent(Student.new("Nazar Chaban", 5))
  university.addStudent(Student.new("Luibomyr Xanas", 2))
  
  internship = InternShip.new("InterLink")
 
  internship.get_smart_students(university.selection)
  internship.print
end