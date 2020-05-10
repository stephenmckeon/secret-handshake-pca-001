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
