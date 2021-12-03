# RomanNumericals

*RomanNumericals* is a library to exchange arabic numbers to roman style.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'roman_numericals'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install roman_numericals

## Usage
### on code
Before usage, you should import this library code below:
```ruby
require "roman_numericals"
```

Also, you can exchange arabic number to roman style with codes below:
```ruby
9.to_roman # => IX
100.ro_roman # => C
```

If you will exchange not positive number under 3999, it will raise `InvalidNumberError`:
```ruby
0.to_roman # => InvalidNumberError
-1.to_roman # => InvalidNumberError
4000.to_roman # => InvalidNumberError
```

### on CLI
You can on CLI.
```bash
$ roman_numericals 9
IX
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test-unit` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/roman_numericals.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
