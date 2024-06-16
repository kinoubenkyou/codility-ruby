def solution(n)
  string = "%b" % n
  string = string.slice(1..string.length) || ""
  last_1_index = -1
  gap_length = 0
  (0...string.length).each do |index|
    if string[index] == "1"
      gap_length = [gap_length, index - last_1_index - 1].max
      last_1_index = index
    end
  end
  gap_length
end
