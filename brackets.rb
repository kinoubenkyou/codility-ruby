def solution(s)
  hash = { "(" => ")", "{" => "}", "[" => "]" }
  stack = []
  s.chars.each do |char|
    if hash.keys.include?(char)
      stack.push(char)
    else
      popped_char = stack.pop
      return 0 unless hash[popped_char] == char
    end
  end
  stack.empty? ? 1 : 0
end
