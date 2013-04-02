module Triggerino
  module ButtonActionable
    def initialize action_list, button
      @action_list = action_list
      @button      = button
      bind_events
    end

    def bind_events
      @button.down { button_down }
      @button.up   { button_up  }
    end

    def button_down
      raise 'Not implemented'
    end

    def button_up
      raise 'Not implemented'
    end
  end
end
