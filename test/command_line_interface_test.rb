require './test/test_helper'
require './lib/command_line_interface'

class CommandLineInterfaceTest < Minitest::Test
  def setup
    argv = ["message.txt", "encrypted.txt"]
    @command1 = CommandLineInterface.new(argv)
  end

  def test_it_exists
    assert_instance_of CommandLineInterface, @command1
  end
end
