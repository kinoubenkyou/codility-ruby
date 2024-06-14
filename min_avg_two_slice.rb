def solution(a)
  min_average = (a[0] + a[1]) / 2.0
  start = 0
  (2...a.length).each do |index|
    average_of_three = (a[index - 2] + a[index - 1] + a[index]) / 3.0
    if average_of_three < min_average
      min_average = average_of_three
      start = index - 2
    end
    average_of_two = (a[index - 1] + a[index]) / 2.0
    if average_of_two < min_average
      min_average = average_of_two
      start = index - 1
    end
  end
  start
end
