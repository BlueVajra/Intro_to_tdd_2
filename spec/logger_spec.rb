require 'logger'

describe Logger do
  it "initializes with a filename" do
    filename = "Logger.txt"
    logger = Logger.new(filename)
  end
  it "receives a string with the log method" do
    filename = "Logger.txt"
    logger = Logger.new(filename)

    logger.log("This is our first string")

  end
  it "prints out the message to the file after 5 logs have been added" do
    filename = "Logger.txt"
    logger = Logger.new(filename)

    logger.log("This is our first string")
    logger.log("This is our second string")
    logger.log("This is our third string")
    logger.log("This is our fourth string")
    logger.log("This is our fifth string")

    expected = "This is our first string
This is our second string
This is our third string
This is our fourth string
This is our fifth string"

    actual = File.read(File.expand_path("../../Logger.txt", __FILE__))
    puts "Test Start ---"
    puts actual
    puts "--- Test End"
    expect(actual).to eq expected

  end

end