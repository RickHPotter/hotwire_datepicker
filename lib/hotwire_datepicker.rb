# frozen_string_literal: true

require_relative "hotwire_datepicker/version"
require_relative "hotwire_datepicker/engine"

module HotwireDatepicker
  mattr_accessor :bypass_convenience_methods
  @@bypass_convenience_methods = false

  class << self
    def setup
      yield self
    end

    def bypass_convenience_methods?
      bypass_convenience_methods
    end

    def stylesheet_path
      "hotwire_datepicker"
    end
  end
end
