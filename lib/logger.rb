class Logger
  def initialize(filename)
    @filename = filename
    @log_storage = []
    @count = 0
  end
  def log(message)
    @count += 1
    @message = message
    @log_storage << Time.now.to_s + " " + @message
    if @count == 5
      @file = File.new(@filename, "w+")
      @file.write(@log_storage.join("\n"))
      @file.close
      @count =0
    end
  end
end