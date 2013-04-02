require 'spec_helper'

module Triggerino
  describe Display do
    let(:lcd) { mock }

    subject { Display.new(lcd) }

    describe '#update' do
      it 'prints in the display' do
        lcd.should_receive(:clear)
        lcd.should_receive(:puts).with 'Hello'
        subject.update('Hello')
      end
    end
  end
end
