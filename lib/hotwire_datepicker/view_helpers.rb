# frozen_string_literal: true

module HotwireDatepicker
  module ViewHelpers
    class << self
      delegate :bypass_convenience_methods?, to: :HotwireDatepicker

      def hw_alias(method_name)
        unless bypass_convenience_methods?
          alias_method method_name.to_s.sub(/^hw_/, ""), method_name
        end
      end
    end

    def hw_datepicker_tag(name, value = nil, **options, &block)
      options[:class] ||= ""
      options[:class] += " datepicker"
      text_field_tag(name, value, options, &block)
    end

    def hw_datepicker_style_tag(*args, **kwargs)
      stylesheet_link_tag HotwireDatepicker.stylesheet_path, *args, **kwargs
    end

    hw_alias :hw_datepicker_style_tag
    hw_alias :hw_datepicker_tag
  end
end
