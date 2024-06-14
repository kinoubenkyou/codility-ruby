def solution(a)
  sorted_numbers = a.sort
  [sorted_numbers[-3] * sorted_numbers[-2] * sorted_numbers[-1], sorted_numbers[0] * sorted_numbers[1] * sorted_numbers[-1]].max
end
