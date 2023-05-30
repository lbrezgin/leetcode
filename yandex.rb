def solution(x)
  result = []
  for i in x do
    count = i ** 2
    result << count
  end
  result.sort
end

array = [-5, 1, 2, 3]
solution(array)
