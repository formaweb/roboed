# Roboed

Now you can talk with our dear friend Robô Ed directly on your ruby application!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'roboed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roboed

## Usage

### Configuring

```ruby
require 'robo_ed'

RoboEd.setup do |config|
  # Robô Ed can answer with some links and HTML tags, by default these tags are removed. You can set strip_tags to false for ignoring this.
  config.strip_tags = false
end
```

### Simple usage
```ruby
require 'robo_ed'

RoboEd.ask('Você gosta de ruby?')
 => "Ruby é o nome de uma pedra preciosa em tom vermelho intenso. Perfeito para uma personagem de livro!"
```

### Talking with Robô Ed directly on your console

After install robo_ed on your environment, run this script:
```ruby
require 'robo_ed'

RoboEd.setup do |options|
  options.strip_tags = true
end

loop do
  print 'Pergunta > '
  question = gets.strip
  break if ['sair', 'exit', 'q', 'quit'].include?(question.downcase)

  puts RoboEd.ask(question)
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/formaweb/roboed.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
