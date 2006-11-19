require 'ebay/types/express_histogram_department'

module Ebay
  module Types
    class DomainHistogram
      include XML::Mapping
      include Initializer
      root_element_name 'DomainHistogram'
      array_node :departments, 'Department', :class => ExpressHistogramDepartment, :default_value => []
    end
  end
end

