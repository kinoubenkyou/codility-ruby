def solution(a)
  left_sum = a[0]
  right_sum = a[1...].sum
  difference = (left_sum - right_sum).abs
  (1...a.length - 1).each do |index|
    left_sum += a[index]
    right_sum -= a[index]
    difference = [difference, (left_sum - right_sum).abs].min
  end
  difference
end
