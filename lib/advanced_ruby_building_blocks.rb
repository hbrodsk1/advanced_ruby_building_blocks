=begin
def bubble_sort(array)
	count = 0
	i = 0
	while i < array.length - 1
		if array[i] > array[i+1]
			array[i], array[i+1] = array[i+1], array[i]
			count += 1
		end
		i += 1
	end
	if count == 0
		print array
	else
		bubble_sort(array)
	end
end

bubble_sort([4,3,78,2,0,2, 4, 67, 23, 42, 1, 653])
=end

def bubble_sort_by(array)
	count = array.length - 1
	while count > 0
	1.upto(count) do |element|
		if yield(array[element - 1], array[element]) < 0
			array[element-1], array[element] = array[element], array[element-1]
		end
	end
	count -= 1
	end
		print array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
		left.length - right.length
	end