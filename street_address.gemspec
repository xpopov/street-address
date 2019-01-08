# frozen_string_literal: true
$LOAD_PATH.unshift "lib"
require "street_address/version"

Gem::Specification.new do |s|
  s.name = "StreetAddress"
  s.licenses = ["MIT"]
  s.version = StreetAddress::VERSION
  s.date = Time.now.utc.strftime("%Y-%m-%d")
  s.summary = "Parse US Addresses into constituent parts."
  s.authors = ["ABODO"]
  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")
  s.homepage = "https://github.com/abodo-dev/street-address"
  s.description = <<-DESC
    StreetAddress allows you to send any string to parse and if the string is a US
    address returns an object of the address broken into it's constituent parts.

    A port of Geo::StreetAddress by Schuyler D. Erle and Tim Bunce.
    Forked from https://github.com/street-address-rb/street-address
  DESC

  s.add_development_dependency "bundler"
  s.add_development_dependency "danger-lgtm"
  s.add_development_dependency "danger-pronto"
  s.add_development_dependency "danger-rubocop"
  s.add_development_dependency "danger-simplecov_json"
  s.add_development_dependency "danger-todoist"
  s.add_development_dependency "danger-welcome_message"
  s.add_development_dependency "minitest"
  s.add_development_dependency "pronto", "0.8.1"
  s.add_development_dependency "rake"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "simplecov-json"
end
