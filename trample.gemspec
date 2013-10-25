# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{trample}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Golick"]
  s.date = %q{2011-04-06}
  s.default_executable = %q{trample}
  s.email = %q{james@giraffesoft.ca}
  s.executables = ["trample"]
  s.add_runtime_dependency 'rest-client'
  s.add_runtime_dependency 'log4r'
  s.add_runtime_dependency 'hpricot'
  s.add_runtime_dependency 'thor'
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "bin/trample",
    "form_load.rb",
    "lib/trample.rb",
    "lib/trample/cli.rb",
    "lib/trample/configuration.rb",
    "lib/trample/logging.rb",
    "lib/trample/page.rb",
    "lib/trample/randomizer.rb",
    "lib/trample/runner.rb",
    "lib/trample/session.rb",
    "lib/trample/timer.rb",
    "test/cli_test.rb",
    "test/configuration_test.rb",
    "test/fixtures/basic_config.rb",
    "test/integration/trample_a_single_url_test.rb",
    "test/logging_test.rb",
    "test/page_test.rb",
    "test/runner_test.rb",
    "test/session_test.rb",
    "test/test_helper.rb",
    "test/timer_test.rb",
    "test/trample_test.rb",
    "trample.gemspec"
  ]
  s.homepage = %q{http://github.com/giraffesoft/trample}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = "Bringing back James Golick's stress testing tool"
  s.test_files = [
    "test/cli_test.rb",
    "test/configuration_test.rb",
    "test/fixtures/basic_config.rb",
    "test/integration/trample_a_single_url_test.rb",
    "test/logging_test.rb",
    "test/page_test.rb",
    "test/runner_test.rb",
    "test/session_test.rb",
    "test/test_helper.rb",
    "test/timer_test.rb",
    "test/trample_test.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

