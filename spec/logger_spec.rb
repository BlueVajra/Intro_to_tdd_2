require 'logger'

describe Logger do
  it "does not print out anything if 3 logs have been added" do
    filename = "Logger.txt"
    logger = Logger.new(filename)

    logger.log("This is our first string")
    logger.log("This is our second string")
    logger.log("This is our third string")
    actual = File.read(File.expand_path("../../Logger.txt", __FILE__))

    expect(actual).not_to match("second string")
  end
  it "prints out the message to the file after 5 logs have been added" do
    filename = "Logger.txt"
    logger = Logger.new(filename)

    logger.log("This is our first string")
    logger.log("This is our second string")
    logger.log("This is our third string")
    logger.log("This is our fourth string")
    logger.log("This is our fifth string")

    actual = File.read(File.expand_path("../../Logger.txt", __FILE__))

    expect(actual).to match("second string")

  end
  it "prints out five lines with timestamp" do
    filename = "Logger.txt"
    logger = Logger.new(filename)

    logger.log("first string is here")
    logger.log("second string")
    logger.log("third string")
    logger.log("fourth string is also here")
    logger.log("fifth string")

    actual = File.read(File.expand_path("../../Logger.txt", __FILE__))

    expect(actual).to match(/(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})/)
    expect(actual).to match("fourth string is also here")

  end

end