[![Gem Version](https://badge.fury.io/rb/activerecord_reconnect_after_checkout.svg)](https://badge.fury.io/rb/activerecord_reconnect_after_checkout)

# ActiverecordReconnectAfterCheckout

This Gem is auto reconnect with DB on each checkout a connection from ActiveRecord's connection pool.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord_reconnect_after_checkout'
```

And then execute:

    $ bundle

## Use on any middlewares

This Gem depends only on ActiveRecord. It works also with Rails, Sinatra, sidekiq etc.

## Reconnecting when checkout a connection.

This Gem uses `checkout` callback of ActiveRecord::ConnectionAdapters::AbstractAdapter.
then execute `AbstractAdapter#reconnect` whenever a callback is called.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/potato2003/activerecord_reconnect_after_checkout.
