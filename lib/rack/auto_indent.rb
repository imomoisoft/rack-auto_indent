require 'nokogiri'

module Rack
  class AutoIndent
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)

      if headers["Content-Type"].include?("application/xml")
        headers.delete('Content-Length')
        xml = Nokogiri::XML(response.respond_to?(:body) ? response.body : response) { |x| x.noblanks }
        formatted_response = Rack::Response.new(
          xml.to_xml,
          status,
          headers
        )
        formatted_response.finish
        formatted_response.to_a
      else
        [status, headers, response]
      end
    end
  end
end
