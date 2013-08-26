require 'biyo/version'
require 'json'

module Biyo
  class Bio

    def initialize
      @collector = Hash.new
    end

    def new_field field_parameter
      field_parameter.each do |key, value|
        @collector[key.to_s.tr("\n", "")] = value.to_s.tr("\n", "")
      end

    end

    def output_json
      @collector.to_json
    end

    def output_hash
      @collector
    end
  end
end
