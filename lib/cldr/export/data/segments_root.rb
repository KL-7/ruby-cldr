module Cldr
  module Export
    module Data
      class SegmentsRoot < Base

        def initialize
          super(nil)
          update(:segments => segmentations)
        end

        def segmentations
          doc.xpath("ldml/segmentations/segmentation").inject({}) do |ret, seg|
            type = seg.attribute("type").value
            ret[type] = segmentation(seg)
            ret
          end
        end

        def segmentation(node)
          {
            :variables => variables(node),
            :rules => rules(node)
          }
        end

        def variables(node)
          (node / "variables" / "variable").map do |variable|
            {
              :id => variable.attribute("id").value,
              :value => variable.text
            }
          end
        end

        def rules(node)
          (node / "segmentRules" / "rule").map do |rule|
            {
              :id => rule.attribute("id").value,
              :value => rule.text
            }
          end
        end

        def path
          @path ||= "#{Cldr::Export::Data.dir}/segments/root.xml"
        end

      end
    end
  end
end