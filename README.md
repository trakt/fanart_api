[![Build Status](https://travis-ci.org/tvapi/fanart_api.png?branch=master)](https://travis-ci.org/tvapi/fanart_api)
[![Dependency Status](https://gemnasium.com/tvapi/fanart_api.png)](https://gemnasium.com/tvapi/fanart_api)
[![Code Climate](https://codeclimate.com/github/tvapi/fanart_api.png)](https://codeclimate.com/github/tvapi/fanart_api)
[![Coverage Status](https://coveralls.io/repos/tvapi/fanart_api/badge.png)](https://coveralls.io/r/tvapi/fanart_api)
[![Gem Version](https://badge.fury.io/rb/fanart_api.png)](http://badge.fury.io/rb/fanart_api)

# FanartApi

Ruby client for fanart.tv API

fanart.tv APIv2 - FanartApi gem v0.1.x (lastest v0.1.3)
fanart.tv APIv3 - FanartApi gem v0.2.x (from v0.2.0)

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

Optional you can add option proxy: false which will not send request to proxy.

```ruby
client = FanartApi::Client.new(api_key: 'API_KEY', proxy: false)
```

## Usage

Movie API

```ruby
client.movie.find(id: id)
client.movie.latest(date: 1...)
```

Music API

```ruby
client.music.artist(id: id)
client.music.album(id: id)
client.music.label(id: id)
client.music.latest(date: 1...)
```

Tv API

```ruby
client.tv.find(id: id)
client.tv.latest(date: 1...)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
