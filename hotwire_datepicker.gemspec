# frozen_string_literal: true

require_relative "lib/hotwire_datepicker/version"

Gem::Specification.new do |spec|
  spec.name        = "hotwire_datepicker"
  spec.version     = HotwireDatepicker::VERSION
  spec.authors     = [ "Rick Potter" ]
  spec.email       = [ "luisfla55@hotmail.com" ]
  spec.homepage    = "https://github.com/RickHPotter/hotwire_datepicker"
  spec.summary     = "Multi-purpose datepicker for Rails apps"
  spec.description = "A datecpicker exclusively for Rails apps with Hotwire and Stimulus."
  spec.license     = "MIT"

  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/RickHPotter/hotwire_datepicker"
  spec.metadata["changelog_uri"] = "https://github.com/RickHPotter/hotwire_datepicker/releases"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", "~> 7.0"
  spec.add_dependency "stimulus-rails", "~> 1.3"
  spec.add_dependency "turbo-rails", "~> 2.0"
end
