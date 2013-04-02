module Triggerino
  class Selector
    include Triggerino::ButtonActionable

    def button_down
      @action_list.select_next
    end

    def button_up; end
  end
end
