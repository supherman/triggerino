# Triggerino

Perform actions (run tests, deploy, ...or whatever you want) in your ruby project pushing a big red button.

## Installation

Add this lines to your application's Gemfile:

    gem 'triggerino'
    gem 'dino',
      git://github.com/supherman/dino.git',
      branch: 'lcdv3'

And then execute:

    bundle

## Usage

1. Create a "triggerino" dir

		mkdir triggerino

2. Define your action classes
	
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
3. Wire your arduino like this

![LCD](http://arduino.cc/es/uploads/Tutorial/lcd_bb.png)

Also add 2 push buttons, one will be the action selector and it needs to be connected to the pin 10 and a the other one will be the trigger and it needs to be connected to the pin 9.

4. Run the listener

  		bundle exec triggerino

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
