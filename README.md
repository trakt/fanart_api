[![Build Status](https://travis-ci.org/wafcio/fanart_api.png?branch=master)](https://travis-ci.org/wafcio/fanart_api)
[![Dependency Status](https://gemnasium.com/wafcio/fanart_api.png)](https://gemnasium.com/wafcio/fanart_api)
[![Code Climate](https://codeclimate.com/github/wafcio/fanart_api.png)](https://codeclimate.com/github/wafcio/fanart_api)
[![Coverage Status](https://coveralls.io/repos/wafcio/fanart_api/badge.png)](https://coveralls.io/r/wafcio/fanart_api)
[![Gem Version](https://badge.fury.io/rb/fanart_api.png)](http://badge.fury.io/rb/fanart_api)

# FanartApi

Ruby client for fanart.tv API

## Getting started

You can add it to your Gemfile with:

```ruby
gem 'fanart_api'
```

## How to use

There is one entry point, in initialize you can past hash with api_key value, or leave empty:

```ruby
client = FanartApi::Client.new(api_key: 'API_KEY')
```

## Usage

Movie API

```ruby
client.movie.find(id: id, type: 'all', sort: '1', limit: '2')
client.movie.update(timestamp: 1...)
```

Music API

```ruby
client.music.artist(id: id, type: 'all', sort: '1', limit: '2')
client.music.album(id: id, type: 'all', sort: '1', limit: '2')
client.music.label(id: id, type: 'all', sort: '1', limit: '2')
client.music.update(timestamp: 1...)
```

Tv API

```ruby
client.tv.find(id: id, type: 'all', sort: '1', limit: '2')
client.tv.update(timestamp: 1...)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
