require "advanced_ruby_building_blocks_2"

describe "my_map" do
	it "yields to block for each element" do
		expect([1, 2, 3].my_map {|num| num + 1} ).to eq([2, 3, 4])
	end
end

describe "my_any?" do
	it "returns true if any element fits criteria" do
		expect([1, 2, 3].my_any? {|elem| elem % 2 == 0} ).to eq(true)
	end

	it "returns false if no element fits criteria" do
		expect(["bob", "bill", "jim"].my_any? {|word| word == "cat"} ).to eq(false)
	end
end

describe "my_count?" do
	context "array has more than 0 elements" do
		it "returns number of elements in array" do
			expect([1, 2, 3, 4, 5].my_count? { |elem| elem } ).to eq(5)
		end
	end
end

describe "my_select" do
	context "at least one element fits criteria" do
		it "returns all elements that fit criteria" do
			expect([1, 2, 3, 6, 9, 23, 21].my_select { |elem| elem % 3 == 0} ).to eq([3, 6, 9, 21])
		end
	end

	context "no elements fit criteria" do
		it "returns empty array" do
			expect([1, 2, 3, 6, 9, 23, 21].my_select { |elem| elem % 4 == 0} ).to eq([])
		end
	end
end

describe "my_none?" do
	context "no elements fir criteria" do
		it "returns true" do
			expect(["cat", "dog", "sheep"].my_none? { |elem| elem == "hey" } ).to eq(true)
		end
	end

	context "at least 1 element fits criteria" do
		it "returns false" do
			expect(["cat", "cat", "sheep"].my_none? { |elem| elem == "cat" } ).to eq(false)
		end
	end
end

describe "my_inject" do
	it "adds the numbers of an array" do
		expect([1, 2, 3, 4].my_inject(0) { |accumulator, i| accumulator += i} ).to eq(10)
	end
end





