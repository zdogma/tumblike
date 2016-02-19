# Tumblikes

This is simple library for collecting your Tumblr likes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tumblikes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tumblikes

## Usage

This gem uses [Tumblr API](https://www.tumblr.com/docs/en/api/v2).  
Please check out the [Ruby OAuth Gem](http://oauth.rubyforge.org/).

### Configuration


```ruby
tumblikes = Tumblikes::Client.new(
  consumer_key:        'xxxxxxxx',
  consumer_secret:     'xxxxxxxx',
  access_token:        'xxxxxxxx',
  access_token_secret: 'xxxxxxxx'
)
```

### Quick Example

```ruby
tumblikes.image_urls
```

You can use fllowing options.
* limit
* offset

```ruby
tumblikes.image_urls(limit: 5, offset: 100)
# => ["https://xx.media.tumblr.com/xxxxxxxx/tumblr_xxxxx.jpg",
#  "https://xx.media.tumblr.com/xxxxxxxx/tumblr_xxxxx.jpg",
#  "https://xx.media.tumblr.com/xxxxxxxx/tumblr_xxxxx.jpg",
#  "https://xx.media.tumblr.com/xxxxxxxx/tumblr_xxxxx.jpg",
#  "https://xx.media.tumblr.com/xxxxxxxx/tumblr_xxxxx.jpg"]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zdogma/tumblikes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
