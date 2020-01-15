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
    assert_equal "./lib/encrypted.txt", @command2.message_filepath
    assert_equal "./lib/decrypted.txt", @command2.delivery_filepath
    assert_equal "82648", @command2.key_decrypt
    assert_equal "240818", @command2.date_decrypt
  end

  def test_it_reads_input_strings
    File.stubs(:read).with("./lib/message.txt").returns("hello world")
    File.stubs(:read).with("./lib/encrypted.txt").returns("keder ohulw")

    assert_equal "hello world", @command1.input_string_encrypt
    assert_equal "keder ohulw", @command2.input_string_decrypt
  end

end
