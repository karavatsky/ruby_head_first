class Candidate
  attr_accessor :name, :age, :occupation, :hobby,  :birthplace
  def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

p Candidate.new("Carl Barnes", age: 49, occupation: "Attorney")

lines = []
File.open("votes.txt") do |file|
  lines= file.readlines
end

votes = Hash.new(0)
lines.each do |line|
  name = line.chomp
  name.upcase!
  votes[name] += 1
end

votes.each do |name, count|
  puts "#{name}: #{count}"
end
