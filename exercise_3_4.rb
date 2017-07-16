# Please count how many times each grade is repeated
# So for example, the above should return 2 for 80
# output should be a hash with the grade as the key
# and the count as the value
# example: {80=>2, 40=>2, 50=>1, 90=>2, 60=>1, 95=>1}

#the function name should be order_grades
# it should take an arbitrary number of parameters
# hint order_grades(*attributes)
# return value should be the hash.

ahmed= [80,40,50]
mohamed=[40,80,90]
yasmine=[60,90,95]

def order_grades(*args)

	if args.length == 2
		a=args[0].concat args[1]
	elsif args.length == 3
		a=args[0].concat args[1].concat args[2]
	end

	myhash={}
	a.each do |s|
		unless myhash.include?(s)
			myhash.merge!(s => 1)
		else
			myhash[s] = myhash[s] + 1
		end

	end
	myhash
end

# This should work
puts order_grades(ahmed,mohamed,yasmine)
# This should work too
puts order_grades(ahmed,mohamed)
 
