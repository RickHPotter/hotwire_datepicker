# frozen_string_literal: true

module HotwireDatepicker
  class Engine < ::Rails::Engine
    isolate_namespace HotwireDatepicker

    initializer "hotwire_datepicker.view_helpers" do
      ActiveSupport.on_load :action_view do
        require "hotwire_datepicker/view_helpers"
        ActionView::Base.include HotwireDatepicker::ViewHelpers

        unless HotwireDatepicker.bypass_convenience_methods?
          module FormBuilderExtensions
            def datepicker(*args, **kwargs, &block)
              @template.hw_datepicker_tag(*args, **kwargs.merge(form: self), &block)
            end
          end

          ActionView::Helpers::FormBuilder.include FormBuilderExtensions
        end
      end
    end

    initializer "hotwire_datepicker.importmap", before: "importmap" do |app|
      if Rails.application.respond_to?(:importmap)
        app.config.importmap.paths << Engine.root.join("config/hw_importmap.rb")
      end
    end

    initializer "hotwire_datepicker.assets.precompile" do |app|
      app.config.assets.precompile << "hw_datepicker_manifest.js" if Rails.application.config.respond_to?(:assets)
    end
  end
end
