fruit_string = "boulder, apple, banana, peach, cow"
fruit_array = fruit_string.split(", ")
fruit_array.pop
fruit_array.shift
puts fruit_array.join(", ")