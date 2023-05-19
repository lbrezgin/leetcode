# @param {Integer} x
# @return {Boolean}
#1) Простой вариант
def is_palindrome(x)
  if x.to_s == x.to_s.reverse
    true
  else
    false
  end
end

p is_palindrome(213)
p is_palindrome(11)
#2
def is_palindrome?(x)
  array = array_creator(x)
  palindrome = []

  array.each_with_index do |item, index|
  break if item != array[array.size - 1 - index] #Алгоритм по сравнению принадлежит ли иттерированный массив числе по порядку индексам которые идут в обрятном порядке, таким образом и идет проверка на палиндром
    palindrome << item
end
palindrome.join.to_i == x
end

def array_creator(num)
  result = []
  while num > 0
    result.push(num % 10)
    num /=10 
  end
  result
end

is_palindrome?(121)




