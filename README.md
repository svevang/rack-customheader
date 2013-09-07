# Rack::CustomHeader

Set custom HTTP headers using this special rack middleware. 

## Installation

Add this line to your application's Gemfile:

    gem 'rack-customheader', git: "git@github.com:svevang/rack-customheader.git"

And then execute:

    $ bundle

## Usage

E.g you can force permissive CORS headers on all requests in case your CDN cache doesn't vary on Origin. _I'm looking at you Cloudfront!_

In config/environements/production.rb:

    require 'rack/custom_header'
    
    # Make sure to insert this middleware before `ActionDispatch::Static`
    config.middleware.insert_before(ActionDispatch::Static, 
                                    Rack::CustomHeader, 
                                    {'Access-Control-Allow-Origin' => '*', 'Access-Control-Allow-Methods' => 'GET, POST'})

    # serve your static assets using rails.
    config.serve_static_assets = true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
