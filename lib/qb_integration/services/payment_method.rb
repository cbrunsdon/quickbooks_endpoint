module QBIntegration
  module Service
    class PaymentMethod < Base
      attr_reader :order

      def initialize(config, payload)
        super("PaymentMethod", config)

        @order = payload[:order]
      end

      def augury_name
        if order.has_key?("credit_cards") && !order["credit_cards"].empty?
          order["credit_cards"].first["cc_type"]
        elsif order["payments"]
          order["payments"].first["payment_method"]
        else
          "None"
        end
      end

      def qb_name
        payment_method_name_mapping = config.fetch("quickbooks_payment_method_name")
        lookup_value!(payment_method_name_mapping.first, augury_name)
      end

      def matching_payment
        quickbooks.fetch_by_name(qb_name) ||
          (raise Exception.new("No PaymentMethod '#{qb_name}' defined in Quickbooks"))
      end
    end
  end
end
