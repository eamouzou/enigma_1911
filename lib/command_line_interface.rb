require './lib/enigma'

class CommandLineInterface
  attr_reader :ARGV

  def initialize(arguments)
    @ARGV = arguments
  end

end
