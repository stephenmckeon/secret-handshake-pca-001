# Secret Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake
  attr_reader :binary_num

  ReverseFlag = 16
  CommandList = ["wink", "double blink", "close your eyes", "jump"]

  def initialize(binary_string)
    @binary_num = binary_string.to_i(2)
  end

  def command_list
    CommandList
  end

  def reverse_flag
    ReverseFlag
  end

  def commands
    handshake = build_handshake(binary_num, command_list)

    if reverse?
      handshake.reverse
    else
      handshake
    end
  end

  def reverse?
    (binary_num & reverse_flag) != 0
  end

  def build_handshake(binary_num, command_list)
    command_list.select.with_index do |command, i|
      (binary_num & (1 << i)) != 0
    end
  end
end

# Different solution

# class SecretHandshake

#   attr_accessor :sequence

#   COMMANDS = ["jump", "close your eyes", "double blink", "wink"]

#   def initialize(sequence)
#     @sequence = convert_sequence(sequence)
#   end

#   def convert_sequence(sequence)
#     raw = sequence.chars.map { |c| c.to_i }
#     while raw.length < 4
#       raw.unshift(0)
#     end

#     raw
#   end

#   def commands

#     commands = []
#     unless reverse = self.sequence.length < 5
#       self.sequence = self.sequence[1..-1]
#     end

#     if !self.sequence.all? { |num| num == 0 || num == 1 }
#       commands
#     else
#       commands = self.sequence.each_with_index.map do |num, i|
#         COMMANDS[i] if num == 1
#       end.compact
#     end
     
#     if reverse
#       commands.reverse
#     else
#       commands
#     end

#   end

# end