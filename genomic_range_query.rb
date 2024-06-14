def solution(s, p, q)
  hash = { A: [0], C: [0], G: [0], T: [0] }
  s.each_char do |nucleotide|
    hash.each do |type, counts|
      if nucleotide.to_sym == type
        counts.append(counts[-1] + 1)
      else
        counts.append(counts[-1])
      end
    end
  end
  min_factors = []
  p.zip(q).each do |start, end_|
    [:A, :C, :G, :T].each.with_index do |type, index|
      if hash[type][end_ + 1] > hash[type][start]
        min_factors.append(index + 1)
        break
      end
    end
  end
  min_factors
end
