def solution(a)
  set = Set.new
  a.each do |number|
    if set.include?(number)
      set.delete(number)
    else
      set.add(number)
    end
  end
  set.to_a[0]
end
