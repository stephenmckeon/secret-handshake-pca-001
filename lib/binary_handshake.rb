# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
require "pry"


class SecretHandshake
  attr_reader :binary


  def initialize(binary)
    @binary = binary
  end

  def commands
    array = @binary.split("")
    secret_array = []
    secret_array << "wink" if array.last == "1"
    secret_array << "double blink" if array[-2] == "1"
    secret_array << "close your eyes" if array[-3] == "1"
    secret_array << "jump" if array[-4] == "1"
    secret_array.reverse! if array[-5] == "1"
    secret_array
  end
end
