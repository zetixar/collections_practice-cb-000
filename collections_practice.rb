def sort_array_asc array
  array.sort
end

def sort_array_desc array
  array.sort.reverse
end

def sort_array_char_count array
  array.sort { |x, y| x.length <=> y.length }
end

def swap_elements array
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to array, index, destination_index
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array array
  array.reverse  
end

def kesha_maker array
  array.each { |word| word[2] = "$" }
end

def find_a array
  array.select { |word| word.start_with?("a") }
end

def sum_array array
  # array.inject { |sum, n| sum + n}
  array.reduce(:+)      
end

def add_s array
  array.each.with_index.collect do |element, index|
    index == 1 ? element : element += "s"
  end
end
