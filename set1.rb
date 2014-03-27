module Set1
  def self.swap_small(array)   # Big O = O(n)
  	min = array[0]
  	min_index = 0
  	if array.size == 1
  		array
  	# elsif array.size == 2
  	# 	array.sort
  	else
  		array.each_with_index do |e, i|
  			if e < min
  				min = e
  				min_index = i
  			end
  		end
  		first = array[min_index] # going to be array's first element
  		array[min_index] = array[0]
  		array[0] = min
  		array
  	end
  end

  def self.find_sum_2(array, sum = 0)    # Big O = O(n)
  	if array.empty?
  		return false
  	elsif array.include?(sum)
  		return true
  	else
  		array.each do |i|
  			if i + i == sum
					return true
  			elsif i < 0
					if array.include?(i.abs)
						return true
					end
				end
			end
  		return false
  	end
  end

  def self.find_sum_3(array)    # Big O = O(n^3)
  	if array.empty?
  		return false
  	elsif array.include?(0)
  		return true
  	else
  		array.each do |x|
  			array.each do |y|
  				array.each do |z|
  					if x+y+z == 0
  						return true
  					end
  				end
  			end
  		end
  		return false
  	end
  end
end
