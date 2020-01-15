require './test/test_helper'
require './lib/command_line_interface'

class CommandLineInterfaceTest < Minitest::Test
  def setup
    argv1 = ["message.txt", "encrypted.txt"]
    @command1 = CommandLineInterface.new(argv1)

    argv2 = ["encrypted.txt", "decrypted.txt", 82648, 240818]
    @command2 = CommandLineInterface.new(argv2)
  end

  def test_they_exist
    assert_instance_of CommandLineInterface, @command1
    assert_instance_of CommandLineInterface, @command2
  end

  def test_attributes
    assert_equal "./lib/message.txt", @command1.message_filepath
    assert_equal "./lib/encrypted.txt", @command1.delivery_filepath
    assert_instance_of Enigma, @command1.enigma
  end

  def test_it_encrypts
    assert_equal nil, @command1.encrypt_command_line_result
  end

end
