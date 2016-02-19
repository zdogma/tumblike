# Tumblikes

This is simple library for collecting your Tumblr likes.

[![Gem Version](https://badge.fury.io/rb/tumblikes.svg)](https://badge.fury.io/rb/tumblikes)

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
#### Liked Count
```ruby
tumblikes.liked_count
# => 5729
```

#### Image Urls
```ruby
tumblikes.image_urls
# => [
#  "https://xx.media.tumblr.com/xxx/tumblr_1.jpg",
#  "https://xx.media.tumblr.com/xxx/tumblr_2.jpg",
#  "https://xx.media.tumblr.com/xxx/tumblr_3.jpg",
#  ...
#  ]
```

You can use following options.
* limit
* offset

```ruby
tumblikes.image_urls(limit: 5, offset: 100)
# => [
#  "https://xx.media.tumblr.com/xxx/tumblr_100.jpg",
#  "https://xx.media.tumblr.com/xxx/tumblr_101.jpg",
#  "https://xx.media.tumblr.com/xxx/tumblr_102.jpg",
#  "https://xx.media.tumblr.com/xxx/tumblr_103.jpg",
#  "https://xx.media.tumblr.com/xxx/tumblr_104.jpg"
#  ]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zdogma/tumblikes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
