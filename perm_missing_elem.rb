def solution(a)
  return 1 if a.empty?
  set = a.to_set
  (1...a.length + 1).each do |number|
    return number unless set.include?(number)
  end
  a.length + 1
end
