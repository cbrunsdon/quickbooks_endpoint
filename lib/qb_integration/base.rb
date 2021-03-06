module QBIntegration
  class Base
    include Helper

    attr_accessor :payload, :config

    def initialize(payload = {}, config)
      @config = config
      @payload = payload
    end

    def item_service
      @item_service ||= Service::Item.new(@config)
    end

    def account_service
      @account_service ||= Service::Account.new(@config)
    end

    def sales_receipt_service
      @receipt_service ||= Service::SalesReceipt.new(config, payload)
    end

    def credit_memo_service
      @credit_memo_service ||= Service::CreditMemo.new(config, payload)
    end

    def payment_method_service
      @payment_method_service ||= Service::PaymentMethod.new(config, payload)
    end

    def customer_service
      @customer_service ||= Service::Customer.new(config, payload)
    end

    def line_service
      @line_service ||= Service::Line.new(config, payload)
    end
  end

  class InvalidPlatformException < Exception; end
  class LookupValueNotFoundException < Exception; end
  class UnsupportedException < Exception; end
  class AlreadyPersistedOrderException < Exception; end
  class NoReceiptForOrderException < Exception; end
end
