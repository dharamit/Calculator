# stores command objects
class CommandStore
  def initialize
    @command_array = []
  end

  def store(command)
    if command.class.to_s != "RepeatCommand"
      @command_array.push(command)
    end
  end

  def get_last(count)
    @command_array.last(count)
  end
end