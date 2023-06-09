#Очень простой красивый алгоритм переворачивания строки в руби
#First solution
def reverse(string)
  reversed = ""

  (string.length-1).downto(0) do |i|
    reversed << string[i]
  end
  reversed
end

#Second solution
def reverse(string)
  reversed = ""

  string.length.times do |i|
    reversed = string[i] + reversed
  end
  reversed
end

#Third solution
def reverse(string)
  reversed = " "
  string.each_char do |c|
    reversed = string[c] + reversed
  end
  reversed
end

string = "hello"
puts reverse(string)

#Четвертый вариант
reversed = ""
string = "hello"
for i in 0..(string.length - 1)
  reversed = string[i] + reversed
end

puts reversed

#Пятый вариант

reversed = Array.new
string = "hello"
for i in 0..(string.length-1)
  reversed.unshift(string[i])
end

puts reversed.join