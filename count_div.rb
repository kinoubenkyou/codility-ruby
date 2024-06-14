def solution(a, b, k)
  temp =  b / k - a / k
  a % k == 0 ? temp + 1 : temp
end
