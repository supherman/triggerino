module Triggerino
  class Trigger
    include Triggerino::ButtonActionable

    def button_down
    end

    def button_up
      @action_list.selected.future.perform
    end
  end
end
