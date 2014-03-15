require 'logger'

describe Logger do
  it "initializes with a filename" do

    filename = "Logger.txt"
    logger = Logger.new(filename)

  end

end