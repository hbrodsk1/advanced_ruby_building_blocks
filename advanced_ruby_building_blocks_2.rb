module Enumerable

	def my_each
		return self.to_enum unless block_given?
		for i in self
			yield(i)
		end

		return self	
	end

	
	def my_each_with_index
		return self.to_enum unless block_given?
		i = 0
		while i < self.length
			yield(i, self[i])
			i += 1
		end

		return self
	end

	def my_select
		return self.to_enum unless block_given?
		selected = []
		for i in self
			if yield(i)
				selected << i
			end
		end

		return selected
	end

	def my_all?
		return true unless block_given?
		counter = 0
		for i in self
			if yield(i)
				counter += 1
			end
		end
			if counter == self.length
				return true
			else
				return false
			end		
	end

	def my_any?
		return true unless block_given?
		counter = 0
		for i in self
			if yield(i)
				counter += 1
			end
		end
			if counter > 0
				return true
			else
				return false
			end
	end

	def my_none?
		counter = 0
		for i in self
			if yield(i)
				counter += 1
			end
		end
			if counter == 0
				return true
			else
				return false
			end
	end

	def my_count?
		counter = 0
		for i in self
			if yield(i)
				counter += 1
			end
		end

		return counter
	end

	def my_map
		return self.to_enum unless block_given?
		mapped = []
		for i in self
			mapped << yield(i)
		end

		return mapped
	end

	def my_map(&block)
		return self.to_enum unless block_given?
		mapped = []
		for i in self
			mapped << proc.call(i)
		end

		return mapped
	end

	def my_inject(input = nil)
		if input.nil?
			accumulator = self.first
		else
			accumulator = input
		end
		for i in self
			accumulator = yield(accumulator, i)	
		end
		return accumulator
	end

	

end
	

def multiply_els(array)
	return array.my_inject(1) { |accumulator, i| accumulator * i }
end


hello =  [5, 6, 7, 8, 9, 10]
print hello.my_map { |x| x + 1 }


















