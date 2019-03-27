class University
	def initialize(name)
	puts @name = name

	end


	def setStudent(studentname)
	@studentname = studentname
	end

	def addStudent(studentname)
	@studentname = studentname
	end

end

class Student
	#attr_accessor :name, :knowledge
	# def initialize(name)
	# @studentname = name
	# end

	# def get_name
	# 	@studentname
	# end	

	def setKnowledge(studentname,knowledge)
		#data.push.each {|k,v| return puts v }
		hash = {studentname => knowledge}
		#@knowledge = knowledge.to_s
		#@name += @knowledge
		
			
	end
end

class Knowledge

def initialize(knowledge = [])
@knowledge = knowledge
end

def selection_condition
	sum = 0
	@knowledge.each  {|i| sum+=i }
	@sum = sum / @knowledge.length
#	if @sum > knowledge[i]

#	*****output student with good knowledge 

end
#   	def show 
#   	 	@knowledge 
#   	# 	test.inspect
#   	end
  	
end

#university = University.new("LNU")
# student = Student.new("Vasyl")
# puts student.set_name# puts student.inspect
# student = Student.new("Oleg")
# puts student.inspect

class Application
student = Student.new
university = University.new("LNU")
knowledge = Knowledge.new([1,2,3])
puts knowledge.selection_condition.inspect
#student = Student.new("Max Grui")
#puts student.setKnowledge(8)
#puts knowledge.show
#student = Student.new("Ivan Franko")
#puts student.knowledge.inspect

# 	arr = []
#university.addStudent(Student.new("Vasyl Karpenko").setKnowledge("Vasyl Karpenko",1))
# arr << university.addStudent(Student.new("Oleg Bulava").setKnowledge(2))
# arr << university.addStudent(Student.new("Julia Svitla").setKnowledge(3))
# arr << university.addStudent(Student.new("Oles Oke").setKnowledge(5))
# arr << university.addStudent(Student.new("Andrew Rochen").setKnowledge(4))
#puts knowledge.show
#university.setKnowledge(1)

hash1 = student.setKnowledge("Vasyl P",3)
hash2 = student.setKnowledge("Vasyl T",5)
hash3 = hash1.merge(hash2)
puts hash3

# # hash1 = student.setKnowledge("test2",4)

# tst1 = student.setKnowledge("test2",3)
# # puts hash1.merge(hash)
# puts tst.merge(tst1)
#puts tst.inspect

# puts arr.inspect

end

# Student.new("Roma")
# Student.new("Julia")
# Student.new("Vika")
# tst = Student.new("Taras")
# tst.c
#university.addStudent(std.name)
#puts university.studentname
#university.addStudent(std1.setKnowledge("zero"))
#university.addStudent(Student.new("Vova"))
#student = Student.new("Roma")
#Student.new("Roma")
#university.addStudent()
#university.universityM("LNU")
#student = Student.new
#student.student("Vova")

#university.addStudent("Vova")
