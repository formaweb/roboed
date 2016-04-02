# Robô Ed

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
  # Robô Ed can answer with some links and HTML tags, by default these tags are kept.
  # You can set strip_tags to true for remove this.
  config.strip_tags = true
end
```

### Simple usage
```ruby
require 'robo_ed'

RoboEd.ask('Você gosta de Ruby?')
 => "Ruby é o nome de uma pedra preciosa em tom vermelho intenso. Perfeito para uma personagem de livro!"
```

### Talking with Robô Ed directly on your console

After install roboed on your environment, run this script:

```console
$ roboed 'Que horas são?'
> Pelo meu relógio são 03:23.
```

If you are on Mac OS X, you can ask to say the answer. Just put `--say` whatever you want. xD

```console
$ roboed --say 'Que horas são?'
> 🔊  Pelo meu relógio são 03:23.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/formaweb/roboed.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
