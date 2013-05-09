module Braincase
  class App
    def initialize(args)
      @action = args[0]
      @options = args[1..args.size]
    end

    def run
      case @action
      else
        raise ArgumentError, "Don't know how to do '#{@action}'"
      end
    end
  end
end
