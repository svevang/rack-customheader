# Rack::CustomHeader

Set a custom header using this special rack middleware. 

## Installation

Add this line to your application's Gemfile:

    gem 'rack-customheader', git: git@github.com:svevang/rack-customheader.git

And then execute:

    $ bundle

## Usage

E.g you can set
CORS headers:

In config/environements/production.rb:

    config.middleware.insert_before(ActionDispatch::Static, Rack::CustomHeader, {'Access-Control-Allow-Origin' => '*', 'Access-Control-Allow-Methods' => 'GET, POST'})


Make sure to include this middleware before `ActionDispatch::Static` and
serve your static assets using rails.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
