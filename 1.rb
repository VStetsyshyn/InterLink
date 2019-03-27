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

  def get_smart_students
    average = @students.map(&:point).sum / @students.size.to_f
    @students.select { |student| student.point > average }
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

  def print
    @students.each do |student|
      pp "Name: #{student.name}. Point: #{student.point}"
    end
  end
end


class Application
  university = University.new("LNU")

  university.addStudent(Student.new("Volodymyr Stetsyshyn", 3))
  university.addStudent(Student.new("Vasya Naguliak", 4))
  university.addStudent(Student.new("Nazar Chaban", 5))
  university.addStudent(Student.new("Luibomyr Xanas", 100))

  intership = InternShip.new("Test")
  intership.students = university.get_smart_students
  intership.print
end
