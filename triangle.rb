def solution(a)
  sorted_numbers = a.sort
  (0...a.length - 2).each do |index|
    return 1 if sorted_numbers[index] + sorted_numbers[index + 1] > sorted_numbers[index + 2]
  end
  0
end
