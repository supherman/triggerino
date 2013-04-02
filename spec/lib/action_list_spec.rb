require 'spec_helper'

module Triggerino
  describe ActionList do
    let(:action1)  { mock('action1') }
    let(:action2)  { mock('action2') }
    let(:observer) { mock(update: false) }

    subject { ActionList.new(observer, action1, action2) }

    describe 'behaves like a list of actions' do
      it 'has a size' do
        expect(subject.size).to be 2
      end

      it 'can be iterated' do
        expect(subject.respond_to? :each).to be true
      end
    end

    describe '#selected' do
      it 'has a selected action by default' do
        expect(subject.selected).to be action1
      end

      it 'can set the selection' do
        subject.selected = action2
        expect(subject.selected).to be action2
      end

      it 'returns false if the action does not exist in the list' do
        expect{subject.selected = mock}.to raise_exception
      end
    end

    describe '#select_next' do
      it 'select the next action' do
        subject.select_next
        expect(subject.selected).to be action2
      end

      context 'last action in the list' do
        it 'selects the first action' do
          subject.selected = action2
          subject.select_next
          expect(subject.selected).to be action1
        end
      end
    end

    describe 'observable' do
      it 'should has an observer' do
        expect(subject.count_observers).to be 1
      end

      it 'notify the observer when selected change' do
        subject.should_receive :changed
        subject.should_receive :notify_observers
        subject.selected = action2
      end

      it 'notify the observer when next is selected' do
        subject.should_receive :changed
        subject.should_receive :notify_observers
        subject.select_next
      end
    end
  end
end
