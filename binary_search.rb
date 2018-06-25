# Recursive binary search implementation
# @param collection [Array]
# @param item [Any]
# @param from [Fixnum]
# @param to [Fixnum]
# @return Integer
def binary_search_recursive(collection, item, from = 0, to = nil)
	to = (collection.count - 1) if to.nil?
	middle = (from + to) / 2
  if item < collection[middle]
      return binary_search_recursive(collection, item, from, middle - 1)
  elsif item > collection[middle]
      return binary_search_recursive(collection, item, middle + 1, to)
  else
      return middle
  end
end

collection = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']

puts "Binary 'i': #{binary_search_recursive(collection, 'i')}"
puts "Binary 'e': #{binary_search_recursive(collection, 'e')}"
puts "Binary 'c': #{binary_search_recursive(collection, 'c')}"
puts "Binary 'f': #{binary_search_recursive(collection, 'f')}"
puts "Binary 'e': #{binary_search_recursive(collection, 'e')}"

puts '---'
puts collection.each_with_index.map{|k, i| i}.join(', ')
puts collection.join(', ')
