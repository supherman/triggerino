require 'spec_helper'

module Triggerino
  describe Selector do
    let(:button)      { mock(:button, down: stub, up: stub) }
    let(:action_list) { mock(:list) }

    subject { Selector.new(action_list, button) }

    describe '#button_down' do
      it 'select the next action in the list' do
        action_list.should_receive(:select_next)
        subject.button_down
      end
    end

    describe '#button_up' do

    end
  end
end
