def volume(options)
  options[:depth] * options[:height] * options[:width]
end

result = volume(height: 5, depth: 2.5, width: 10)
puts "Volume is #{result}"