# -*- coding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ucms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ucms"
  s.version     = Ucms::VERSION
  s.authors     = ["Tianbymy"]
  s.email       = ["tianbymy@163.com"]
  s.homepage    = "https://github.com/tianbymy/ucms"
  s.summary     = "Summary of Ucms."
  s.description = "信息发布引擎"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.14"
  s.add_dependency "jquery-rails"
  s.add_development_dependency "sqlite3"
end
