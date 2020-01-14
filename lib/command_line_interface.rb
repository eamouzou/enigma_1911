require './lib/enigma'

class CommandLineInterface
  attr_reader :ARGV, :message_filepath, :delivery_filepath, :enigma

  def initialize(arguments)
    @ARGV = arguments
    @message_filepath = "./lib/" + @ARGV[0]
    @delivery_filepath = "./lib/" + @ARGV[1]
    @enigma = Enigma.new
  end

end
