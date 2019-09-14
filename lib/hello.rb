def hello_t(array)
#  array.length.times { |index| yield array[index] }
  i = 0
 
  while i < array.length
    yield array[i]
    i = i + 1
  end
  
  array
end

# call your method here!

cattos = ["Tim", "Tom", "Jim"]

hello_t(cattos) do |name=""|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end