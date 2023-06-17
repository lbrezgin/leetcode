def longest_common_prefix(strs)
  return "" if strs.empty?

  base = strs[0]
  result = "" 

  for i in 0..base.length - 1
    if strs.all? { |string| string[i] == base[i]}
      result += base[i]
    else
      break
    end
  end
  result
end

strs = ["a","aaa","a"]
p longest_common_prefix(strs)

#Решение заключалось в том, чтобы сначало сохранить в переменную первый элемент массива, и потом уже сравнивать с ним остальные строки из массива на нахохдения общих префиксов.