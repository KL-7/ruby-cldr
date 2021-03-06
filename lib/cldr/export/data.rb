require 'core_ext/string/camelize'

module Cldr
  module Export
    module Data
      autoload :Base,                      'cldr/export/data/base'
      autoload :Calendars,                 'cldr/export/data/calendars'
      autoload :Currencies,                'cldr/export/data/currencies'
      autoload :CurrencyDigitsAndRounding, 'cldr/export/data/currency_digits_and_rounding'
      autoload :Delimiters,                'cldr/export/data/delimiters'
      autoload :Languages,                 'cldr/export/data/languages'
      autoload :Layout,                    'cldr/export/data/layout'
      autoload :Lists,                     'cldr/export/data/lists'
      autoload :Metazones,                 'cldr/export/data/metazones'
      autoload :NumberingSystems,          'cldr/export/data/numbering_systems'
      autoload :Numbers,                   'cldr/export/data/numbers'
      autoload :Plurals,                   'cldr/export/data/plurals'
      autoload :PluralRules,               'cldr/export/data/plural_rules'
      autoload :Rbnf,                      'cldr/export/data/rbnf'
      autoload :RbnfRoot,                  'cldr/export/data/rbnf_root'
      autoload :SegmentsRoot,              'cldr/export/data/segments_root'
      autoload :Territories,               'cldr/export/data/territories'
      autoload :TerritoriesContainment,    'cldr/export/data/territories_containment'
      autoload :Timezones,                 'cldr/export/data/timezones'
      autoload :Units,                     'cldr/export/data/units'
      autoload :WindowsZones,              'cldr/export/data/windows_zones'

      class << self
        def dir
          @dir ||= File.expand_path('./vendor/cldr/common')
        end

        def dir=(dir)
          @dir = dir
        end

        def locales
          Dir["#{dir}/main/*.xml"].map { |path| path =~ /([\w_-]+)\.xml/ && $1 }
        end

        def components
          self.constants.sort - [:Base, :Export]
        end
      end
    end
  end
end
