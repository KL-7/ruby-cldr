# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: ruby-cldr 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-cldr"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sven Fuchs"]
  s.date = "2014-02-16"
  s.description = "Ruby library for exporting and using data from CLDR, see http://cldr.unicode.org"
  s.email = "svenfuchs@artweb-design.de"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.textile",
    "TODO"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.textile",
    "Rakefile",
    "TODO",
    "VERSION",
    "cldr.thor",
    "lib/cldr.rb",
    "lib/cldr/data.rb",
    "lib/cldr/download.rb",
    "lib/cldr/export.rb",
    "lib/cldr/export/code.rb",
    "lib/cldr/export/code/numbers.rb",
    "lib/cldr/export/data.rb",
    "lib/cldr/export/data/base.rb",
    "lib/cldr/export/data/calendars.rb",
    "lib/cldr/export/data/calendars/gregorian.rb",
    "lib/cldr/export/data/currencies.rb",
    "lib/cldr/export/data/currency_digits_and_rounding.rb",
    "lib/cldr/export/data/delimiters.rb",
    "lib/cldr/export/data/languages.rb",
    "lib/cldr/export/data/layout.rb",
    "lib/cldr/export/data/lists.rb",
    "lib/cldr/export/data/metazones.rb",
    "lib/cldr/export/data/numbering_systems.rb",
    "lib/cldr/export/data/numbers.rb",
    "lib/cldr/export/data/plurals.rb",
    "lib/cldr/export/data/plurals/cldr_grammar.treetop",
    "lib/cldr/export/data/plurals/grammar.rb",
    "lib/cldr/export/data/plurals/rules.rb",
    "lib/cldr/export/data/rbnf.rb",
    "lib/cldr/export/data/rbnf_root.rb",
    "lib/cldr/export/data/segments_root.rb",
    "lib/cldr/export/data/territories.rb",
    "lib/cldr/export/data/timezones.rb",
    "lib/cldr/export/data/units.rb",
    "lib/cldr/export/data/windows_zones.rb",
    "lib/cldr/export/ruby.rb",
    "lib/cldr/export/yaml.rb",
    "lib/cldr/format.rb",
    "lib/cldr/format/currency.rb",
    "lib/cldr/format/date.rb",
    "lib/cldr/format/datetime.rb",
    "lib/cldr/format/datetime/base.rb",
    "lib/cldr/format/decimal.rb",
    "lib/cldr/format/decimal/base.rb",
    "lib/cldr/format/decimal/fraction.rb",
    "lib/cldr/format/decimal/integer.rb",
    "lib/cldr/format/decimal/number.rb",
    "lib/cldr/format/percent.rb",
    "lib/cldr/format/time.rb",
    "lib/cldr/thor.rb",
    "lib/core_ext/hash/deep_merge.rb",
    "lib/core_ext/hash/deep_stringify_keys.rb",
    "lib/core_ext/hash/symbolize_keys.rb",
    "lib/core_ext/string/camelize.rb",
    "lib/core_ext/string/underscore.rb",
    "test/all.rb",
    "test/export/code/numbers_test.rb",
    "test/export/data/all.rb",
    "test/export/data/calendars_test.rb",
    "test/export/data/currencies_test.rb",
    "test/export/data/delimiters_test.rb",
    "test/export/data/languages_test.rb",
    "test/export/data/metazones_test.rb",
    "test/export/data/numbers_test.rb",
    "test/export/data/plurals_test.rb",
    "test/export/data/territories_test.rb",
    "test/export/data/timezones_test.rb",
    "test/export/data/units_test.rb",
    "test/export/data/windows_zones_test.rb",
    "test/export_test.rb",
    "test/format/all.rb",
    "test/format/currency_test.rb",
    "test/format/date_test.rb",
    "test/format/datetime_test.rb",
    "test/format/decimal/fraction_test.rb",
    "test/format/decimal/integer_test.rb",
    "test/format/decimal/number_test.rb",
    "test/format/decimal_test.rb",
    "test/format/percent_test.rb",
    "test/format/time_test.rb",
    "test/test_autotest.rb",
    "test/test_helper.rb"
  ]
  s.homepage = "http://github.com/svenfuchs/ruby-cldr"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Ruby library for exporting and using data from CLDR"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<ya2yaml>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<rubyzip>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-nav>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<ya2yaml>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<rubyzip>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-nav>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<ya2yaml>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<rubyzip>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-nav>, [">= 0"])
  end
end

