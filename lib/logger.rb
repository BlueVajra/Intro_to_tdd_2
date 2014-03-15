class Logger
  def initialize(filename)
    @filename = filename
    @count = 0
    @log_storage = []
  end
  def log(message)
    @count += 1
    @message = message
    @log_storage << Time.now.to_s + " " + @message
    if @count == 5
      @file = File.new(@filename, "a")
      @file.write(@log_storage.join("\n"))
      @file.write("\n")
      @file.close
      @count = 0
      @log_storage = []
    end
  end
end