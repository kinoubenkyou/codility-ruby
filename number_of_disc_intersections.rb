def solution(a)
  left_positions = []
  right_positions = []
  a.each.with_index do |radius, center|
    left_positions.append(center - radius)
    right_positions.append(center + radius)
  end
  left_positions = left_positions.sort
  right_positions = right_positions.sort
  left_index = 0
  intersect_count = 0
  right_positions.each.with_index do |right_position, right_index|
    while left_index < left_positions.length and left_positions[left_index] <= right_position
      left_index += 1
    end
    intersect_count += left_index - 1 - right_index
    return -1 if intersect_count > 10000000
  end
  intersect_count
end
