def is_valid(s)
  brackets = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }

  result = []

  s.each_char do |char|
    if brackets.key?(char)
      result << char
    elsif brackets.value?(char)
      return false if result.empty? || brackets[result.pop] != char
    end
  end
  result.empty?
end

p is_valid("[]")
