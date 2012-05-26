module Cldr
  module Export
    module Data
      class Numbers < Base
        def initialize(locale)
          super
          update(
            :numbers => {
              :symbols => symbols,
              :formats => {
                :decimal => {
                  :patterns => {
                    :default => format('decimal')
                  }
                },
                :scientific => {
                  :patterns => {
                    :default => format('scientific')
                  }
                },
                :percent => {
                  :patterns => {
                    :default => format('percent')
                  }
                },
                :currency => {
                  :patterns => {
                    :default => format('currency'),
                  },
                  :unit => unit
                }
              }
            }
          )
        end

        def symbols
          select('numbers/symbols/*').inject({}) do |result, node|
            result[name(node).to_sym] = node.content unless draft?(node)
            result
          end
        end

        def format(type)
          latin = select("numbers/#{type}Formats[@numberSystem=\"latn\"]/#{type}FormatLength/#{type}Format/pattern")
          (latin || select("numbers/#{type}Formats/#{type}FormatLength/#{type}Format/pattern")).each do |node|
            return node.content unless draft?(node) || node.attribute('type')
          end

          {}
        end

        def unit
          @unit ||= select("numbers/currencyFormats/unitPattern").inject({}) do |result, node|
            count = node.attribute('count').value rescue 'one'
            result[count] = node.content
            result
          end
        end
      end
    end
  end
end