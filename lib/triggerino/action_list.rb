require 'observer'

module Triggerino
  class ActionList
    include Enumerable
    include Observable

    extend Forwardable

    def_instance_delegators :@actions, :each, :size

    attr_reader :selected

    def initialize observer, *actions
      @actions  = actions
      @selected = @actions.first
      add_observer observer
      notify_changed
    end

    def select_next
      @selected = @actions[selected_index + 1] || @actions.first
      notify_changed
    end

    def selected= action
      raise 'The action is not included in the list' if !@actions.include?(action)
      @selected = action
      notify_changed
    end

    private

    def selected_index
      @actions.index(@selected)
    end

    def notify_changed
      changed
      notify_observers @selected
    end
  end
end
