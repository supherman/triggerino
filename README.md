# Triggerino

## Installation

Add this line to your application's Gemfile:

    gem 'triggerino'

And then execute:

    bundle

Or install it yourself as:

    gem install triggerino

## Usage

2. Create a "triggerino" dir

		mkdir triggerino

3. Define your action classes
	
		touch triggerino/my_action.rb

    	class MyAction
      	  include Triggerino::Action

      	  def perform
            # puts your action logic here
      	  end

      	  def to_s
            'A descriptive name for your action'
      	  end
    	end

2. Run the listener

  		bundle exec triggerino

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
