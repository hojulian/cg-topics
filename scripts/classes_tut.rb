######## CLASS #######
# A very simple class

class School
	def initialize(name)
		@name = name
	end
end

##### INSTANCES #####

my_school = School.new("Brandeis")

my_school.class

your_school = School.new("Olin College")

##### INSTANCE VARIABLES #####

class School
	attr_accessor :name, :rank

	def initialize(name, rank)
		@name = name
		@rank = rank
	end

	def to_s
		"#{@name} is ranked #{@rank}"
	end
end

my_school = School.new("Brandeis", 30)
your_school = School.new("Olin", 50)

##### DUCK TYPING #####
my_school.to_s
puts "Inspecting my school: #{my_school.inspect}"
my_school.respond_to? :inspect
1.234.respond_to? :inspect

##########################
# Blocks are kind of like'anonymous methods'

numbers = [1, 20, 33, -1, 11]
numbers.sort
numbers.sample
numbers

puts "first example:"
numbers.each { |x| puts x}

puts "\nSecond example (the same!)"
numbers.each do
	|x| puts x
end

numbers.map {|x| x * 1000}

numbers.reduce { |accum, val| accum + val }
