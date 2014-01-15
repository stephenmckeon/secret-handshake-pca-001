# Secret Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake

  attr_accessor :sequence

  COMMANDS = ["jump", "close your eyes", "double blink", "wink"]

  def initialize(sequence)
    @sequence = convert_sequence(sequence)
  end

  def convert_sequence(sequence)
    raw = sequence.chars.map { |c| c.to_i }
    while raw.length < 4
      raw.unshift(0)
    end

    raw
  end

  def commands

    commands = []
    unless reverse = self.sequence.length < 5
      self.sequence = self.sequence[1..-1]
    end

    if !self.sequence.all? { |num| num == 0 || num == 1 }
      commands
    else
      commands = self.sequence.each_with_index.map do |num, i|
        COMMANDS[i] if num == 1
      end.compact
    end
     
    if reverse
      commands.reverse
    else
      commands
    end

  end

end