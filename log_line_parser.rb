class LogLineParser
  def initialize(line)
    @line = line
  end
         def message
            # Assuming the format is always "[LOG_LEVEL]: Message"
            # Extract the message from the log line and strip it of whitespace
            return @line.gsub(/\A\[[A-Z]+]\: /, '').strip
          end
    


  def log_level
    
     # Extract the log level from the log line and convert it to lowercase
    log_level = @line.match(/\A\[(.*?)\]/)[1]
    return log_level.downcase
  end

  def reformat
    # Format the string as "message (log_level)"
    return "#{message} (#{log_level})"
  end
end
# Example usage:
        puts LogLineParser.new('[ERROR]: Invalid operation').message
        # => "Invalid operation"
        puts LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
        # => "Disk almost full"
