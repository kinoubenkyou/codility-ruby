def solution(n, a)
  maxed_to = 0
  increase_hash = {}
  a.each do |number|
    if number == n + 1
      maxed_to += (increase_hash.values).max || 0
      increase_hash = {}
    else
      increase_hash[number] = (increase_hash[number] || 0) + 1
    end
  end
  (1...n + 1).map do |index|
    maxed_to + (increase_hash[index] || 0)
  end
end
