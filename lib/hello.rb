def hello_t(array)
  if block_given?
    i = 0
 
    while i < array.length
      yield array[i]
      i = i + 1
    end
  
    array
  else
    puts "Hey! No block was given!"
  end
end

# array.length.times { |index| yield array[index] }

# call your method here!

cattos = ["Tim", "Tom", "Jim"]

hello_t(cattos) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end