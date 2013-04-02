require 'spec_helper'

module Triggerino
  describe Trigger do
    let(:button)      { mock(:button, down: stub, up: stub) }
    let(:selected)    { mock(:action) }
    let(:action_list) { mock(:list, selected: selected) }

    subject { Trigger.new(action_list, button) }

    describe '#button_down' do
      it 'triggers the selected action' do
        selected.stub_chain(:future, :perform)
        subject.button_down
      end
    end

    describe '#button_up' do

    end
  end
end
