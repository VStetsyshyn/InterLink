module GetData
  # Get from DB or file
  def get_students
    students = []
    students << Student.new("Volodymyr Stetsyshyn", 3)
    students << Student.new("Vasya Naguliak", 70)
    students << Student.new("Nazar Chaban", 50)
    students << Student.new("Luibomyr Xanas", 100)
    students
  end
end

class University
  attr_accessor :name
  attr_reader :students

  def initialize(name)
    @name = name
    @students = []
  end

  def add_student(student)
    @students << student
    student
  end
end

class Student
  extend GetData
  attr_accessor :name, :point

  def initialize(name, point)
    @name = name
    @point = point.to_f
  end
end

class InternShip
  attr_accessor :name
  attr_reader :students

  def initialize(name,university)
    @name = name
    @university = university
    @students = get_smart_students
  end

  def print
    @students.each do |student|
      pp "Name: #{student.name}. Point: #{student.point}"
    end
  end

  private

  def get_smart_students

  return [] if @university.students.size.zero? 

    average = @university.students.map(&:point).inject(0, :+) / @university.students.size.to_f
    @university.students.select { |student| student.point > average }
  end
end

class Application
  university = University.new("LNU")
  students = Student.get_students  

  students.each { |el| university.add_student(el) }

  internship = InternShip.new("InterLink",university)
  internship.print
end