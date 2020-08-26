def proc_method(aproc)
  aproc.call
end

my_proc = Proc.new {puts "A proc method"}
proc_method(my_proc)


def lambda_method(alambda)
  puts alambda.call
end

my_lambda=lambda{puts "A lambda method"}
lambda_method(my_lambda)


def return_test_proc
  puts "beginning"
  Proc.new { return puts "middle"}.call
  puts "end"
end

return_test_proc

def return_test_lambda
  puts "beginning"
  lambda {return puts "middle"}.call
  puts "end"
end

return_test_lambda

def parameter_handling(proc_or_lambda)
 proc_or_lambda.call(1)
end


my_proc1 = Proc.new {|a,b| puts "A proc method"}
parameter_handling(my_proc)


my_lambda1=lambda{|a,b| puts "A lambda method"}
parameter_handling(my_lambda1)






