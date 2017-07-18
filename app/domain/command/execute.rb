module Command
  module Execute
    def execute(command)
      handler_for(command).call(command)
    end

    private

    def handler_for(command)
      {
        Command::CreatePlayer => CommandHandler::CreatePlayer.new
      }.fetch(command.class)
    end
  end
end