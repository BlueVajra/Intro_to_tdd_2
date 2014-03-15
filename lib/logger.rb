class Logger
  def initialize(filename)
    @filename = filename
    @log_storage = []
    @count = 0
  end
  def log(message)
    @count += 1
    @message = message
    @log_storage << @message
    if @count == 5
      @log_storage.join("\n")
    end
  end
end