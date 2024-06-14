def solution(a, k)
  return a if a.empty?
  rotate_count = k % a.length
  a[-rotate_count...] + a[...-rotate_count]
end
