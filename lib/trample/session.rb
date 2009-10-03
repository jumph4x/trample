module Trample
  class Session
    include Logging
    include Timer

    attr_reader :config, :response_times, :cookies, :last_response

    def initialize(config)
      @config         = config
      @response_times = []
      @cookies        = {}
    end

    def trample
      @config.login.each {|page| hit page} unless @config.login.empty?
      @config.iterations.times do
        @config.pages.each do |p|
          hit p
        end
      end
    end

    protected
      def hit(page)
        response_times << request(page)
        # this is ugly, but it's the only way that I could get the test to pass
        # because rr keeps a reference to the arguments, not a copy. ah well.
        @cookies = cookies.merge(last_response.cookies)
        logger.info "#{page.request_method.to_s.upcase} #{page.url} #{response_times.last}s #{last_response.code}"
      end

      def request(page)
        time do
          @last_response = send(page.request_method, page)
        end
      end

      def get(page)
        RestClient.get(page.url, :cookies => cookies)
      end

      def post(page)
        params = page.parameters
        if authenticity_token = parse_authenticity_token(@last_response)
          params.merge!(:authenticity_token => authenticity_token)
        end
        RestClient.post(page.url, params, :cookies => cookies)
      end

      def parse_authenticity_token(html)
        return nil if html.nil?
        input = Hpricot(html).at("input[@name='authenticity_token']")
        input.nil? ? nil : input['value']
      end
  end
end
