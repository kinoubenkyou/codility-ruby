def solution(x, a)
  leaf_positions = (1...x + 1).to_set
  (0...a.length).each do |index|
    leaf_positions.delete(a[index])
    return index if leaf_positions.empty?
  end
  -1
end
