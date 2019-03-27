class University
	def initialize(name)
		puts @name = name
	end

	def setStudent(studentname)
		puts @studentname = studentname
	end

	def addStudent(hash)
		
	@hash = hash
		
		#@studentArray.inspect
	end
	def storage
	@hash
	end
	# def getStudent_name
	# 	@studentArray.join(', ')
	# end

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
	#puts @knowledge.join(', ')

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
# hashG0 = university.addStudent(Student.new("Volodymyr Stetsyshyn"))
# hashG1 = university.addStudent(Student.new("Nazar Chaban"))
# hashG2 = university.addStudent(Student.new("Vasya Naguliak"))
# puts @student
# t = hashG0.merge(hashG1)
# o = t.merge(hashG2)

#knowledge = Knowledge.new(o)
#knowledge.selection_condition

internship = InternShip.new("InternLink")
internship.setStudent("Vova")
puts internship.getStudent



#puts university.addStudent(Student.new("Nazar Chaban").setKnowledge(5))
#k = {"name" => 1,"name2" =>2, "name3"=>3}
#knowledge = Knowledge.new(k)
#knowledge.selection_condition

#university.storage("VOVA",5)
# university.storage("Stephan",10)
# university.storage("Kamila",4)

#student.setKnowledge("Vov st",4)

# student.setKnowledge("Nazar Chaban",15)
# student.setKnowledge("Na2z111111111111ar Chaban",10)
# student.setKnowledge("Na3zar Chaban",1)
# puts student.setKnowledge("Nazar Chaban",7)


#puts t2 = t.merge(t1)


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