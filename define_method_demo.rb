
################## define method example######################
class MyClass
	my_arr = %w(kiran ravi ram sham)
	my_arr.each do |element|
	 define_method element do |arg|
		puts "Method Called #{element} #{arg}"
	 end
	end
end

my_obj = MyClass.new
puts my_obj.instance_methods
puts my_obj.kiran("Arg1")
