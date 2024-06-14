def solution(a)
  set = (1...a.length + 1).to_set
  a.each do |number|
    if set.include?(number)
      set.delete(number)
    else
      return 0
    end
  end
  1
end
