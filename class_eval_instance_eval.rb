class Person

end

Person.class_eval do 
  def say_hello
    puts "Hello"
  end 
end

kiran=Person.new
kiran.say_hello

Person.instance_eval do 
  def human?
     true
  end
end

puts Person.human?
