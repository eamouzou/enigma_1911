require './lib/enigma'

class CommandLineInterface
  attr_reader :ARGV, :message_filepath, :delivery_filepath, :enigma

  def initialize(arguments)
    @ARGV = arguments
    @message_filepath = "./lib/" + @ARGV[0]
    @delivery_filepath = "./lib/" + @ARGV[1]
    @enigma = Enigma.new
  end

  def input_string_encrypt
    File.read(@message_filepath).chomp
  end

  def encrypt_result
    @enigma.encrypt(input_string_encrypt)
  end

  def write_to_encrypted
    stored = encrypt_result
    File.write(@delivery_filepath, stored[:encryption])
    {key: stored[:key].to_i, date: stored[:date].to_i}
  end

  def encrypt_command_line_result
    info = write_to_encrypted
    key = info[:key]
    date = info[:date]
    puts "Created #{@ARGV[1]} with the key #{key} and date #{date}"
  end

  def input_string_decrypt
    File.read(@message_filepath)
  end

  def decrypt_result
    enigma = Enigma.new
    enigma.decrypt(input_string_decrypt, @key_decrypt, @date_decrypt)
  end

  def write_to_decrypted
    stored = decrypt_result
    File.write(@delivery_filepath, stored[:decryption])
    {key: stored[:key].to_i, date: stored[:date].to_i}
  end

  def decrypt_command_line_result
    info = write_to_decrypted
    key = info[:key]
    date = info[:date]
    puts "Created #{@ARGV[1]} with the key #{key} and date #{date}"
  end

end
