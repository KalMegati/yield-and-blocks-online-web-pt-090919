def hello_t(array)
  if block_given?
    array.length.times { |index| yield array[index] }
    array
  else
    puts "Hey! No block was given!"
  end
end

# 

# call your method here!

cattos = ["Tim", "Tom", "Jim"]

hello_t(cattos) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  else
    puts "Oh, #{name}"
  end
end