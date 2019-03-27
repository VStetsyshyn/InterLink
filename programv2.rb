class University
	def initialize(name)
		puts @name = name
	end

	def setStudent(studentname)
		puts @studentname = studentname
	end

	def addStudent(hash)
		
	@hash = hash
		
	end
		
end

class Student
	def initialize(studentname)
		@studentname = studentname
		
		@hash = {@studentname => 0}
	end			
	
	def setKnowledge(knowledge)
	 	
	 	@hash[@studentname] = knowledge
	  	@hash
	 end
end

class Knowledge

def initialize(knowledge)
@knowledge = knowledge

end

def selection_condition # it works 

	sum = 0
	@knowledge.each  {|k,v| sum += v } #knowledge is all hash
	@sum = sum / @knowledge.length
	puts @sum
	@result = @knowledge.each{|k,v| return puts k if @sum < v }
	


#	*****output student with good knowledge 
end

  	
end

class Application
university = University.new("LNU")


#Student.new("Nazar Chaban").setKnowledge(5)
puts university.addStudent(Student.new("Volodymyr Stetsyshyn").setKnowledge(3))
puts university.addStudent(Student.new("Vasya Naguliak")).setKnowledge(4)
puts university.addStudent(Student.new("Nazar Chaban")).setKnowledge(5)
#university.addStudent(Student.new("Nazar Chaban"))
#university.addStudent(Student.new("Vasya Naguliak"))
# puts @student
# t = hashG0.merge(hashG1)
# o = t.merge(hashG2)

#knowledge = Knowledge.new(o)
#knowledge.selection_condition




end

class InternShip
	def initialize(name)
		puts @name = name
	end
def setStudent=(name)
		@name = name #@studentname = studentname # list of all students
end

def getStudent
	@name
end


end