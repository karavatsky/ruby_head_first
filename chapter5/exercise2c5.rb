def with_these_numbers(frst, scnd)
  puts yield frst, scnd
end

with_these_numbers(1, 4) do |first, second|
  puts first + second # Output: 5
end

with_these_numbers(3, 6) do |first, second|
  puts first * second # Output: 18
end

with_these_numbers(12, 3) do |first, second|
  puts first / second # Output: 4
end