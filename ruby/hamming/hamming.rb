class Hamming
  def self.compute(strand_A, strand_B)
    strand_A = strand_A.chars
    strand_B = strand_B.chars
    count = 0
    raise ArgumentError if strand_A.length != strand_B.length
    strand_A.each_with_index do | ele, idx |
      unless strand_A[idx] == strand_B[idx]
        count += 1
      end
    end
    return count
  end
end