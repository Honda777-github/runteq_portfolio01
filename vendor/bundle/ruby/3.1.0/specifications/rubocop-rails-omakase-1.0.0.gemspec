# -*- encoding: utf-8 -*-
# stub: rubocop-rails-omakase 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubocop-rails-omakase".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.date = "2023-12-29"
  s.email = "david@hey.com".freeze
  s.homepage = "https://github.com/rails/rubocop-rails-omakase".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Omakase Ruby styling for Rails".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rubocop-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rubocop-performance>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rubocop-minitest>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-performance>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-minitest>.freeze, [">= 0"])
  end
end
