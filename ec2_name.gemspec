# -*- encoding: utf-8 -*-
root = File.expand_path('../', __FILE__)
lib = "#{root}/lib"

$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "ec2_name"
  s.version     = '0.1.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tung Nguyen"]
  s.email       = ["tongueroo@gmail.com"]
  s.homepage    = "http://github.com/tongueroo/ec2_name"
  s.summary     = %q{Quick way to tag the name of the instance so that it shows up on aws console}
  s.description = %q{Quick way to tag the name of the instance so that it shows up on aws console.}

  s.executables = `cd #{root} && git ls-files bin/*`.split("\n").collect { |f| File.basename(f) }
  s.files = `cd #{root} && git ls-files`.split("\n")
  s.require_paths = %w(lib)
  s.test_files = `cd #{root} && git ls-files -- {features,test,spec}/*`.split("\n")

  s.add_dependency "aws"

  s.add_development_dependency "rspec", "~> 1.0"
end