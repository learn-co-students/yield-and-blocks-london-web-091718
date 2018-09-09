def hello_t(arg)
  if block_given?
    i = 0
    
    while i < arg.length
      yield (arg[i])
      i = i+1
    end
    arg
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!

arr = ["Tim", "Tom", "Jim"]

hello_t(arr) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end