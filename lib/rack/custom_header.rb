
module Rack
  class CustomHeader
    def initialize(app, headers)
      @app = app
      @custom_headers = headers
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers = headers.merge(@custom_headers)
      [status, headers, body]
    end
  end
end
