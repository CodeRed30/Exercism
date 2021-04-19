class ResistorColorDuo

  def self.value(input)
    key = {
      "black": 0,
      "brown": 1,
      "red": 2,
      "orange": 3,
      "yellow": 4,
      "green": 5,
      "blue": 6,
      "violet": 7,
      "grey": 8,
      "white": 9
    }
    output = []
    input.map do |color| 
      output << key[:"#{color}"]
    end
    output.join.to_i
  end
end



