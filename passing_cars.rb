def solution(a)
  to_east_count = 0
  pass_count = 0
  a.each do |direction|
    if direction == 0
      to_east_count += 1
    else
      pass_count += to_east_count
      return -1 if pass_count > 1000000000
    end
  end
  pass_count
end
