class RunLengthEncoding
  def self.encode(input) 
    input
    .chars
    .chunk { |part| part }
    .collect { |letter, count| [count.length > 1 ? count.length : '', letter].join }
    .join
  end

  def self.decode(input)
    input
  end
end
