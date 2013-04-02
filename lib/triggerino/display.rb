module Triggerino
  class Display
    def initialize lcd
      @lcd = lcd
    end

    def update value
      @lcd.clear
      @lcd.puts value.to_s
    end
  end
end
