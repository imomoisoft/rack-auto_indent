module Rack
  class AutoIndent
    def initialize(app)
      @app
    end

    def call(env)
      status, headers, response = @app.call(env)

      if headers["Content-Type"].include? "application/xml"
#        headers.delete('Content-Length')
        response_body = response.body

        xml = Nokogiri::XML(response.respond_to?(:body) ? response.body : response)
        p xml.to_s
      end
      [status, headers, formatted_response || response]
    end
  end
end
