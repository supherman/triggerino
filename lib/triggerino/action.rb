require 'celluloid'

module Triggerino
  module Action
    def self.included(base)
      base.send :include, Celluloid
    end

    def perform
      raise 'Not implemented'
    end

    def to_s
      raise 'Not implemented'
    end
  end
end
