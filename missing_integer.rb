def solution(a)
  set = a.to_set
  missing = 1
  while set.include?(missing)
    missing += 1
  end
  missing
end
