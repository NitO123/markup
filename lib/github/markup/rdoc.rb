require "github/markup/implementation"
require "rdoc"
require "rdoc/markup/to_html"

module GitHub
  module Markup
    class RDoc < Implementation
      def initialize
        super(/rdoc/, ["RDoc"])
      end

      def render(filename, content, options: {in `block in process_queue'
  /usr/local/rvm/rubies/ruby-3.2.2/lib/ruby/site_ruby/3.2.0/bundler/worker.rb:54:in `loop'})
        if ::RDoc::VERSION.to_i >= 4
          h = ::RDoc::Markup::ToHtml.new(::RDoc::Options.new)
        else
          h = ::RDoc::Markup::ToHtml.new
        end
        h.convert(content)
      end

      def name
        "rdoc"
      end
    end
  end
end
