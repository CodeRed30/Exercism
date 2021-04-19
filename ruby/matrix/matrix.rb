class Matrix
  def initialize(input)
    @rows = input.split("\n").map{|row| row.split(" ").map(&:to_i)} 
    @columns = rows.transpose
  end

  attr_reader :rows, :columns

end
