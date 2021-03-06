# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{matchstick}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kyle Daigle"]
  s.date = %q{2011-01-03}
  s.description = %q{A simple framework for communicating with 37signals' Campfire API. Currently still a work in progress.}
  s.email = %q{kyle@digitalworkbox.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/matchstick.rb",
    "lib/matchstick/campfire.rb",
    "lib/matchstick/room.rb",
    "matchstick.gemspec",
    "test/helper.rb",
    "test/matchstick/campfire_test.rb",
    "test/matchstick/room_test.rb"
  ]
  s.homepage = %q{http://github.com/kdaigle/matchstick}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A simple framework for communicating with 37signals' Campfire API.}
  s.test_files = [
    "test/helper.rb",
    "test/matchstick/campfire_test.rb",
    "test/matchstick/room_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_development_dependency(%q<cover_me>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.1"])
    else
      s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_dependency(%q<cover_me>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
    end
  else
    s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
    s.add_dependency(%q<cover_me>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
  end
end

