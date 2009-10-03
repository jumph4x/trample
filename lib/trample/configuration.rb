module Trample
  class Configuration
    attr_reader :pages

    def initialize(&block)
      @pages = []
      instance_eval(&block)
    end

    def concurrency(*value)
      @concurrency = value.first unless value.empty?
      @concurrency
    end

    def iterations(*value)
      @iterations = value.first unless value.empty?
      @iterations
    end

    def get(url, &block)
      @pages << Page.new(:get, url, block || {})
    end

    def post(url, params = nil, &block)
      @pages << Page.new(:post, url, params || block)
    end

    def login
      pages_before = @pages.size
      if block_given?
        yield
        pages_added = @pages.size - pages_before
        @login = pages.slice! pages_before, pages_added
      end

      @login ||= []
    end

    def ==(other)
      other.is_a?(Configuration) &&
        other.pages == pages &&
        other.concurrency == concurrency &&
        other.iterations  == iterations
    end
  end
end
