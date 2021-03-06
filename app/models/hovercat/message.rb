module Hovercat
  class Message < Hash
    attr_reader :routing_key

    def initialize(routing_key)
      @routing_key = routing_key
    end

    def add(resource:, as:)
      self[as.to_sym] = resource

      self
    end
  end
end
