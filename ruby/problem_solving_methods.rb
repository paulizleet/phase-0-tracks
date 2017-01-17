

def search(array_to_search, term_to_find)

	array_to_search.each_index {|idx|

		if array_to_search.at(idx) == term_to_find
			return idx
		end
	}

	return nil
end

def fib(a)
	fibs = Array.new(a)

	a.times do |i|
		if i == 0
			fibs[i] = 0
		elsif i == 1
			fibs[i] = 1
		else
			fibs[i] = fibs[i-1] + fibs[i-2]
		end
	end
	return fibs
end

def merge_sort(arr)
	#Merge sort is an efficient, recursive sorting algorithm.

	#It works by calling itself on both halves of the given array.  
	#When it has an array of length one, it is sorted by definition, and it is returned.
	#After receiving a sorted array from the lower recursion, 
	#It compares each value in both and merges those two arrays into one sorted array



	#If the arrays contain one unit, return them for sorting
	#Otherwise, split them in half and recurse

	if 1 >= arr.length
		return arr

	else

		#Merge sort for the first half
		array_a = merge_sort(arr[0,(arr.length/2).floor])
		#And the second half.
		array_b = merge_sort(arr[ ((arr.length/2).floor), arr.length])

	end


	#now merge the two
	array_c = Array.new(array_a.length + array_b.length) #Initialize an array that big enough for all of the values

	idx = 0
	while array_a.length > 0 and array_b.length > 0 #While both arrays are not of length 0

		if array_a[0] < array_b[0]
			array_c[idx] = array_a[0] #Take the value at index 0
			array_a = array_a.drop(1) #and remove that value from the array
		else
			array_c[idx] = array_b[0]
			array_b = array_b.drop(1)
		end
		idx+=1
	end




	#Iterate over the leftover values in both arrays
	while array_a.length > 0
		array_c[idx] = array_a[0]
		array_a = array_a.drop(1)
		idx+=1
	end
	while array_b.length > 0
		array_c[idx] = array_b[0]
		array_b = array_b.drop(1)
		idx+=1
	end
	
	return array_c

end





a = [1,2,3,4,5,6,7]
puts search(a, 7)
puts search(a, 9)

puts fib(100)

#Give me ten thousand random numbers
random_numbers = 10000.times.map{Random.rand(1000)}

p merge_sort(random_numbers)