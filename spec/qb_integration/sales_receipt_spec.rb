require 'spec_helper'

module QBIntegration
  describe SalesReceipt do
    let(:message) do
      {
        "message" => "order:new",
        :message_id => "abc",
        :payload => {
          "order" => Factories.order,
          "original" => Factories.original,
          "parameters" => Factories.parameters
        }
      }.with_indifferent_access
    end

    let(:config) do
      {
        'quickbooks.realm' => "1014843225",
        'quickbooks.access_token' => "qyprdINz6x1Qccyyj7XjELX7qxFBE9CSTeNLmbPYb7oMoktC",
        'quickbooks.access_secret' => "wiCLZbYVDH94UgmJDdDWxpYFG2CAh30v0sOjOsDX",
        "quickbooks.payment_method_name" => [{ "visa" => "Discover" }],
        'quickbooks.account_name' => "Inventory Asset",
        "quickbooks.shipping_item" => "Shipping Charges",
        "quickbooks.tax_item" => "State Sales Tax-NY",
        "quickbooks.discount_item" => "Discount"
      }
    end

    subject { SalesReceipt.new(message, config) }

    it "persist new sales receipt" do
      VCR.use_cassette("sales_receipt/persist_new_receipt") do
        sales_receipt = subject.save

        expect(sales_receipt.doc_number).to eq Factories.order["number"]
      end
    end
  end
end