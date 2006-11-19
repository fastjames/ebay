require 'ebay/types/pagination'

module Ebay
  module Requests
    class GetAccount < Abstract
      include XML::Mapping
      include Initializer
      root_element_name 'GetAccountRequest'
      text_node :account_history_selection, 'AccountHistorySelection', :optional => true
      time_node :invoice_date, 'InvoiceDate', :optional => true
      time_node :begin_date, 'BeginDate', :optional => true
      time_node :end_date, 'EndDate', :optional => true
      object_node :pagination, 'Pagination', :class => Pagination, :optional => true
      boolean_node :exclude_balance, 'ExcludeBalance', 'true', 'false', :optional => true
      boolean_node :exclude_summary, 'ExcludeSummary', 'true', 'false', :optional => true
      text_node :account_entry_sort_type, 'AccountEntrySortType', :optional => true
      text_node :currency, 'Currency', :optional => true
    end
  end
end

