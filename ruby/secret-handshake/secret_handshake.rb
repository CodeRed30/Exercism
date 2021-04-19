class SecretHandshake
  def initialize(handshake)
    @handshake = handshake
    @rev = false
    @result = []
  end

  def commands
    outlier
    calculate_handshake
    calculate_result
  end

  private

  def outlier 
    @handshake = 0 unless @handshake.is_a? Integer
    @handshake = @handshake.to_s(2).to_i
  end

  def calculate_handshake
    until @handshake == 0
      calculate_commands
    end
  end

  def calculate_result
    @rev == true ? @result : @result.reverse
  end

  def calculate_commands
    if @handshake >= 10000
      rev
    elsif @handshake >= 1000
      jump
    elsif @handshake >= 100
      close_your_eyes
    elsif @handshake >= 10
      double_blink
    else 
      wink
    end
  end

  def rev
    @rev = true
    @handshake -= 10000
  end

  def jump
    @result << "jump"
    @handshake -= 1000
  end

  def close_your_eyes 
    @result << "close your eyes"
    @handshake -= 100
  end

  def double_blink
    @result << "double blink"
    @handshake -= 10
  end

  def wink
    @result << "wink"
    @handshake -= 1
  end

end