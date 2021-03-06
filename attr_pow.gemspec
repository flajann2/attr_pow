# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: attr_pow 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "attr_pow".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fred Mitchell".freeze]
  s.date = "2018-01-28"
  s.description = "\n   attr_pow gives you smart attributes. You may sepecify defaults,\n   use attr_pow for hooks, and even define clonability and queuability.\n   ".freeze
  s.email = "fred.mitchell@gmx.de".freeze
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.org"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".ruby-version",
    ".semver",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.org",
    "Rakefile",
    "attr_pow.gemspec",
    "examples/shops.rb",
    "lib/attr_pow.rb",
    "spec/attr_pow_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/flajann2/attr_pow".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.5".freeze)
  s.rubygems_version = "2.7.3".freeze
  s.summary = "smart attributes -- defaults, hooks, cloneability, queues! POW!!!".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<semver2>.freeze, ["~> 3"])
      s.add_runtime_dependency(%q<queue_ding>.freeze, ["~> 0"])
      s.add_runtime_dependency(%q<deep_dive>.freeze, ["~> 0"])
      s.add_development_dependency(%q<awesome_print>.freeze, ["~> 1"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 3"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1"])
      s.add_development_dependency(%q<juwelier>.freeze, ["~> 2"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, ["~> 3"])
      s.add_development_dependency(%q<pry-doc>.freeze, ["~> 0"])
      s.add_development_dependency(%q<pry-remote>.freeze, ["~> 0"])
      s.add_development_dependency(%q<pry-rescue>.freeze, ["~> 1"])
      s.add_development_dependency(%q<pry-stack_explorer>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<semver2>.freeze, ["~> 3"])
      s.add_dependency(%q<queue_ding>.freeze, ["~> 0"])
      s.add_dependency(%q<deep_dive>.freeze, ["~> 0"])
      s.add_dependency(%q<awesome_print>.freeze, ["~> 1"])
      s.add_dependency(%q<yard>.freeze, ["~> 0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 3"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1"])
      s.add_dependency(%q<juwelier>.freeze, ["~> 2"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, ["~> 0"])
      s.add_dependency(%q<pry-byebug>.freeze, ["~> 3"])
      s.add_dependency(%q<pry-doc>.freeze, ["~> 0"])
      s.add_dependency(%q<pry-remote>.freeze, ["~> 0"])
      s.add_dependency(%q<pry-rescue>.freeze, ["~> 1"])
      s.add_dependency(%q<pry-stack_explorer>.freeze, ["~> 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<semver2>.freeze, ["~> 3"])
    s.add_dependency(%q<queue_ding>.freeze, ["~> 0"])
    s.add_dependency(%q<deep_dive>.freeze, ["~> 0"])
    s.add_dependency(%q<awesome_print>.freeze, ["~> 1"])
    s.add_dependency(%q<yard>.freeze, ["~> 0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1"])
    s.add_dependency(%q<juwelier>.freeze, ["~> 2"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0"])
    s.add_dependency(%q<pry-byebug>.freeze, ["~> 3"])
    s.add_dependency(%q<pry-doc>.freeze, ["~> 0"])
    s.add_dependency(%q<pry-remote>.freeze, ["~> 0"])
    s.add_dependency(%q<pry-rescue>.freeze, ["~> 1"])
    s.add_dependency(%q<pry-stack_explorer>.freeze, ["~> 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end

