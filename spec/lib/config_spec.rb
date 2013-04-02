require 'spec_helper'

module Triggerino
  describe Config do
    it 'has "triggerino" as default load path' do
      expect(Triggerino::Config.load_path).to eq 'triggerino'
    end
  end
end
