# KeywordArgTime
[![Build Status](https://travis-ci.org/joker1007/keyword_arg_time.png?branch=master)](https://travis-ci.org/joker1007/keyword_arg_time)
[![Coverage Status](https://coveralls.io/repos/joker1007/keyword_arg_time/badge.png?branch=master)](https://coveralls.io/r/joker1007/keyword_arg_time?branch=master)

Time or Date object constructer by keyword arguments

## Installation

Add this line to your application's Gemfile:

    gem 'keyword_arg_time'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install keyword_arg_time

## Usage

```ruby
require 'keyword_arg_time'

Time.now(hour: 10, min: 15, sec: 0) # => 2014-01-10 10:15:00 +0900

time = Time.local(2014, 1, 10)      # => 2014-01-10 00:00:00 +0900
time.copy(hour: 10, min: 15)        # => 2014-01-10 10:15:00 +0900

Date.today(mon: 3)                  # => <Date: 2014-03-10 ((2456727j,0s,0n),+0s,2299161j)>

date = Date.new(2014, 1, 10)        # => <Date: 2014-01-10 ((2456668j,0s,0n),+0s,2299161j)>
date.copy(day: 25)                  # => <Date: 2014-01-25 ((2456683j,0s,0n),+0s,2299161j)>
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/keyword_arg_time/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
