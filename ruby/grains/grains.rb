class Grains 
  def self.square(input)
    raise ArgumentError unless input > 0 && input <= 64
    calculate_grains(input)
  end

  def self.total
    count = 0
    input = 1
    64.times do 
      count += calculate_grains(input)
      input += 1
    end
    count
  end

  private

  def self.calculate_grains(input)
    n = 1
    (input - n).times {n = n * 2}
    n
  end
end

