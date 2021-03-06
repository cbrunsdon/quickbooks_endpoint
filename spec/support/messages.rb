module Factories
  class << self
    def config
      {
        'quickbooks_access_token'          => "qyprdhjEBfA2BI8sD7fWVPH4wL9esaKrYeWLosiPBir3pa5j",
        'quickbooks_access_secret'         => "yU7RtuM1Lot803jkkCfcyV9GePoNZGnZO8nRbBxo",
        'quickbooks_income_account'        => "Sales of Product Income",
        'quickbooks_realm'                 => "835973000",
        'quickbooks_inventory_costing'     => true,
        'quickbooks_inventory_account'     => "Inventory Asset",
        'quickbooks_deposit_to_account_name' => "Inventory Asset",
        'quickbooks_cogs_account'          => "Cost of Goods Sold",
        'quickbooks_payment_method_name' => [{ "visa" => "Discover" }],
        'quickbooks_account_name' => "Inventory Asset",
        'quickbooks_shipping_item' => "Shipping Charges",
        'quickbooks_tax_item' => "State Sales Tax-NY",
        'quickbooks_discount_item' => "Discount"
      }
    end

    def order_changes(args = {})
      {
        "totals"=> {
          "item"=> 119.94,
          "adjustment"=> 15,
          "tax"=> 5,
          "shipping"=> 0,
          "payment"=> 114.95,
          "order"=> 134.94
        },
        "line_items"=> [
          {
            "name"=> "Spree Baseball Jersey",
            "sku"=> "SPR-00001",
            "external_ref"=> "",
            "quantity"=> 3,
            "price"=> 19.99,
            "variant_id"=> 8,
            "options"=> {}
          },
          {
            "name"=> "Ruby on Rails Baseball Jersey",
            "sku"=> "ROR-00004",
            "external_ref"=> "",
            "quantity"=> 3,
            "price"=> 19.99,
            "variant_id"=> 20,
            "options"=> {
                "tshirt-color"=> "Red",
                "tshirt-size"=> "Medium"
            }
          }
        ]
      }.merge(args)
    end

    def parameters(token='qyprdeWdq0V9n7kdb2rS6RTfJ87kwsEgA72Ex68BNVcqCTsV', secret='Bg4SfWKJH1z5JC9ltPcnLt96ZrDAXAy6Zp6XQif3', realm='814984455')
      [
        {:name => 'quickbooks.access_token', :value => token },
        {:name => 'quickbooks.access_secret', :value => secret },
        {:name => 'quickbooks.realm', :value => realm },
        {:name => "quickbooks.deposit_to_account_name", :value => "Undeposited Funds"},
        {:name => "quickbooks.payment_method_name", :value => [
          {
            "master" => "MasterCard",
            "visa" => "Visa",
            "american_express" => "AmEx",
            "discover" => "Discover",
            "PayPal" => "PayPal"
          }]
        },
        {:name => "quickbooks.shipping_item", :value => "Shipping Charges"},
        {:name => "quickbooks.tax_item", :value => "State Sales Tax-NY"},
        {:name => "quickbooks.coupon_item", :value => "Coupons"},
        {:name => "quickbooks.discount_item", :value => "Discount"},
        {:name => "quickbooks.account_name", :value => "Sales"},
        {:name => "quickbooks.timezone", :value => "EST"}
      ]
    end

    def order(args = {})
      {
          "number"=> "R181807170",
          "channel"=> "spree",
          "email"=> "spree@example.com",
          "currency"=> "USD",
          "placed_on"=> "2013-07-30T19:19:5Z",
          "updated_at"=> "2013-07-30T20:08:39Z",
          "status"=> "complete",
          "totals"=> {
              "item"=> 99.95,
              "adjustment"=> 15,
              "tax"=> 5,
              "shipping"=> 0,
              "payment"=> 114.95,
              "order"=> 114.95
          },
          "line_items"=> [
              {
                  "name"=> "Spree Baseball Jersey",
                  "sku"=> "SPR-00001",
                  "external_ref"=> "",
                  "quantity"=> 2,
                  "price"=> 19.99,
                  "variant_id"=> 8,
                  "options"=> {}
              },
              {
                  "name"=> "Ruby on Rails Baseball Jersey",
                  "sku"=> "ROR-00004",
                  "external_ref"=> "",
                  "quantity"=> 3,
                  "price"=> 19.99,
                  "variant_id"=> 20,
                  "options"=> {
                      "tshirt-color"=> "Red",
                      "tshirt-size"=> "Medium"
                  }
              }
          ],
          "adjustments"=> [
              {
                  "name"=> "Shipping",
                  # drop this key once cassets are replayed
                  "originator_type"=> "Spree::ShippingMethod",
                  "value"=> "5.0"
              },
              {
                  "name"=> "Shipping",
                  "originator_type"=> "Spree::ShippingMethod",
                  "value"=> "5.0"
              },
              {
                  "name"=> "North America 5.0",
                  "originator_type"=> "Spree::TaxRate",
                  "value"=> "5.0"
              }
          ],
          "shipping_address"=> {
              "firstname"=> "Brian",
              "lastname"=> "Quinn",
              "address1"=> "7735 Old Georgetown Rd",
              "address2"=> "",
              "zipcode"=> "20814",
              "city"=> "Bethesda",
              "state"=> "Maryland",
              "country"=> "US",
              "phone"=> "555-123-456"
          },
          "billing_address"=> {
              "firstname"=> "Brian",
              "lastname"=> "Quinn",
              "address1"=> "7735 Old Georgetown Rd",
              "address2"=> "",
              "zipcode"=> "20814",
              "city"=> "Bethesda",
              "state"=> "Maryland",
              "country"=> "US",
              "phone"=> "555-123-456"
          },
          "payments"=> [
              {
                  "number"=> 6,
                  "status"=> "completed",
                  "amount"=> 5,
                  "payment_method"=> "visa"
              },
              {
                  "number"=> 5,
                  "status"=> "completed",
                  "amount"=> 109.95,
                  "payment_method"=> "visa"
              }
          ],
          "shipments"=> [
              {
                  "number"=> "H184070692",
                  "cost"=> 5,
                  "status"=> "shipped",
                  "stock_location"=> nil,
                  "shipping_method"=> "UPS Ground (USD)",
                  "tracking"=> nil,
                  "updated_at"=> nil,
                  "shipped_at"=> "2013-07-30T20:08:38Z",
                  "items"=> [
                      {
                          "name"=> "Spree Baseball Jersey",
                          "sku"=> "SPR-00001",
                          "external_ref"=> "",
                          "quantity"=> 1,
                          "price"=> 19.99,
                          "variant_id"=> 8,
                          "options"=> {}
                      },
                      {
                          "name"=> "Ruby on Rails Baseball Jersey",
                          "sku"=> "ROR-00004",
                          "external_ref"=> "",
                          "quantity"=> 1,
                          "price"=> 19.99,
                          "variant_id"=> 20,
                          "options"=> {
                              "tshirt-color"=> "Red",
                              "tshirt-size"=> "Medium"
                          }
                      }
                  ]
              },
              {
                  "number"=> "H532961116",
                  "cost"=> 5,
                  "status"=> "ready",
                  "stock_location"=> nil,
                  "shipping_method"=> "UPS Ground (USD)",
                  "tracking"=> "4532535354353452",
                  "updated_at"=> nil,
                  "shipped_at"=> nil,
                  "items"=> [
                      {
                          "name"=> "Ruby on Rails Baseball Jersey",
                          "sku"=> "ROR-00004",
                          "external_ref"=> "",
                          "quantity"=> 2,
                          "price"=> 19.99,
                          "variant_id"=> 20,
                          "options"=> {
                              "tshirt-color"=> "Red",
                              "tshirt-size"=> "Medium"
                          }
                      },
                      {
                          "name"=> "Spree Baseball Jersey",
                          "sku"=> "SPR-00001",
                          "external_ref"=> "",
                          "quantity"=> 1,
                          "price"=> 19.99,
                          "variant_id"=> 8,
                          "options"=> {}
                      }
                  ]
              }
          ]
      }.merge(args)
    end

    def original(args = {})
      {
        "id"=> 5,
        "number"=> "R181807170",
        "item_total"=> "99.95",
        "total"=> "114.95",
        "state"=> "complete",
        "adjustment_total"=> "15.0",
        "user_id"=> 1,
        "created_at"=> "2013-07-29T17:42:02Z",
        "updated_at"=> "2013-07-30T20:08:39Z",
        "completed_at"=> "2013-07-30T19:19:05Z",
        "payment_total"=> "114.95",
        "shipment_state"=> "partial",
        "payment_state"=> "paid",
        "email"=> "spree@example.com",
        "special_instructions"=> nil,
        "currency"=> "USD",
        "ship_total"=> "10.0",
        "tax_total"=> "5.0",
        "bill_address"=> {
          "id"=> 5,
          "firstname"=> "Brian",
          "lastname"=> "Quinn",
          "address1"=> "7735 Old Georgetown Rd",
          "address2"=> "",
          "city"=> "Bethesda",
          "zipcode"=> "20814",
          "phone"=> "555-123-456",
          "company"=> nil,
          "alternative_phone"=> nil,
          "country_id"=> 49,
          "state_id"=> 26,
          "state_name"=> nil,
          "country"=> {
            "id"=> 49,
            "iso_name"=> "UNITED STATES",
            "iso"=> "US",
            "iso3"=> "USA",
            "name"=> "United States",
            "numcode"=> 840
          },
          "state"=> {
            "id"=> 26,
            "name"=> "Maryland",
            "abbr"=> "MD",
            "country_id"=> 49
          }
        },
        "ship_address"=> {
          "id"=> 6,
          "firstname"=> "Brian",
          "lastname"=> "Quinn",
          "address1"=> "7735 Old Georgetown Rd",
          "address2"=> "",
          "city"=> "Bethesda",
          "zipcode"=> "20814",
          "phone"=> "555-123-456",
          "company"=> nil,
          "alternative_phone"=> nil,
          "country_id"=> 49,
          "state_id"=> 26,
          "state_name"=> nil,
          "country"=> {
            "id"=> 49,
            "iso_name"=> "UNITED STATES",
            "iso"=> "US",
            "iso3"=> "USA",
            "name"=> "United States",
            "numcode"=> 840
          },
          "state"=> {
            "id"=> 26,
            "name"=> "Maryland",
            "abbr"=> "MD",
            "country_id"=> 49
          }
        },
        "line_items"=> [
          {
            "id"=> 5,
            "quantity"=> 2,
            "price"=> "19.99",
            "variant_id"=> 8,
            "variant"=> {
              "id"=> 8,
              "name"=> "Spree Baseball Jersey",
              "product_id"=> 8,
              "sku"=> "SPR-00001",
              "price"=> "19.99",
              "weight"=> nil,
              "height"=> nil,
              "width"=> nil,
              "depth"=> nil,
              "is_master"=> true,
              "cost_price"=> "17.0",
              "permalink"=> "spree-baseball-jersey",
              "options_text"=> "",
              "option_values"=> [

              ],
              "images"=> [
                {
                  "id"=> 41,
                  "position"=> 1,
                  "attachment_content_type"=> "image/jpeg",
                  "attachment_file_name"=> "spree_jersey.jpeg",
                  "type"=> "Spree::Image",
                  "attachment_updated_at"=> "2013-07-24T17=>01=>27Z",
                  "attachment_width"=> 480,
                  "attachment_height"=> 480,
                  "alt"=> nil,
                  "viewable_type"=> "Spree::Variant",
                  "viewable_id"=> 8,
                  "attachment_url"=> "/spree/products/41/product/spree_jersey.jpeg?1374685287"
                },
                {
                  "id"=> 42,
                  "position"=> 2,
                  "attachment_content_type"=> "image/jpeg",
                  "attachment_file_name"=> "spree_jersey_back.jpeg",
                  "type"=> "Spree::Image",
                  "attachment_updated_at"=> "2013-07-24T17=>01=>28Z",
                  "attachment_width"=> 480,
                  "attachment_height"=> 480,
                  "alt"=> nil,
                  "viewable_type"=> "Spree::Variant",
                  "viewable_id"=> 8,
                  "attachment_url"=> "/spree/products/42/product/spree_jersey_back.jpeg?1374685288"
                }
              ]
            }
          },
          {
            "id"=> 7,
            "quantity"=> 3,
            "price"=> "19.99",
            "variant_id"=> 20,
            "variant"=> {
              "id"=> 20,
              "name"=> "Ruby on Rails Baseball Jersey",
              "product_id"=> 3,
              "sku"=> "ROR-00004",
              "price"=> "19.99",
              "weight"=> nil,
              "height"=> nil,
              "width"=> nil,
              "depth"=> nil,
              "is_master"=> false,
              "cost_price"=> "17.0",
              "permalink"=> "ruby-on-rails-baseball-jersey",
              "options_text"=> "Size=> M, Color=> Red",
              "option_values"=> [
                {
                  "id"=> 33,
                  "name"=> "Red",
                  "presentation"=> "Red",
                  "option_type_name"=> "tshirt-color",
                  "option_type_id"=> 2
                },
                {
                  "id"=> 16,
                  "name"=> "Medium",
                  "presentation"=> "M",
                  "option_type_name"=> "tshirt-size",
                  "option_type_id"=> 1
                }
              ],
              "images"=> [
                {
                  "id"=> 7,
                  "position"=> 1,
                  "attachment_content_type"=> "image/png",
                  "attachment_file_name"=> "ror_baseball_jersey_red.png",
                  "type"=> "Spree::Image",
                  "attachment_updated_at"=> "2013-07-24T17=>00=>58Z",
                  "attachment_width"=> 240,
                  "attachment_height"=> 240,
                  "alt"=> nil,
                  "viewable_type"=> "Spree::Variant",
                  "viewable_id"=> 20,
                  "attachment_url"=> "/spree/products/7/product/ror_baseball_jersey_red.png?1374685258"
                },
                {
                  "id"=> 8,
                  "position"=> 2,
                  "attachment_content_type"=> "image/png",
                  "attachment_file_name"=> "ror_baseball_jersey_back_red.png",
                  "type"=> "Spree::Image",
                  "attachment_updated_at"=> "2013-07-24T17=>00=>59Z",
                  "attachment_width"=> 240,
                  "attachment_height"=> 240,
                  "alt"=> nil,
                  "viewable_type"=> "Spree::Variant",
                  "viewable_id"=> 20,
                  "attachment_url"=> "/spree/products/8/product/ror_baseball_jersey_back_red.png?1374685259"
                }
              ]
            }
          }
        ],
        "payments"=> [
          {
            "id"=> 6,
            "amount"=> "5.0",
            "state"=> "completed",
            "payment_method_id"=> 5,
            "payment_method"=> {
              "id"=> 5,
              "name"=> "Check",
              "environment"=> "development"
            }
          },
          {
            "id"=> 5,
            "amount"=> "109.95",
            "state"=> "completed",
            "payment_method_id"=> 1,
            "payment_method"=> {
              "id"=> 1,
              "name"=> "Credit Card",
              "environment"=> "development"
            }
          }
        ],
        "shipments"=> [
          {
            "id"=> 6,
            "tracking"=> nil,
            "number"=> "H184070692",
            "cost"=> "5.0",
            "shipped_at"=> "2013-07-30T20=>08=>38Z",
            "state"=> "shipped",
            "order_id"=> "R827587314",
            "stock_location_name"=> "default",
            "shipping_rates"=> [
              {
                "id"=> 74,
                "cost"=> "10.0",
                "selected"=> false,
                "shipment_id"=> 6,
                "shipping_method_id"=> 2
              },
              {
                "id"=> 75,
                "cost"=> "15.0",
                "selected"=> false,
                "shipment_id"=> 6,
                "shipping_method_id"=> 3
              },
              {
                "id"=> 73,
                "cost"=> "5.0",
                "selected"=> true,
                "shipment_id"=> 6,
                "shipping_method_id"=> 1
              }
            ],
            "shipping_method"=> {
              "name"=> "UPS Ground (USD)"
            },
            "inventory_units"=> [
              {
                "id"=> 16,
                "state"=> "shipped",
                "variant_id"=> 8,
                "order_id"=> nil,
                "shipment_id"=> 6,
                "return_authorization_id"=> nil
              },
              {
                "id"=> 15,
                "state"=> "shipped",
                "variant_id"=> 20,
                "order_id"=> nil,
                "shipment_id"=> 6,
                "return_authorization_id"=> nil
              }
            ]
          },
          {
            "id"=> 5,
            "tracking"=> "4532535354353452",
            "number"=> "H532961116",
            "cost"=> "5.0",
            "shipped_at"=> nil,
            "state"=> "ready",
            "order_id"=> "R827587314",
            "stock_location_name"=> "default",
            "shipping_rates"=> [
              {
                "id"=> 80,
                "cost"=> "10.0",
                "selected"=> false,
                "shipment_id"=> 5,
                "shipping_method_id"=> 2
              },
              {
                "id"=> 81,
                "cost"=> "15.0",
                "selected"=> false,
                "shipment_id"=> 5,
                "shipping_method_id"=> 3
              },
              {
                "id"=> 79,
                "cost"=> "5.0",
                "selected"=> true,
                "shipment_id"=> 5,
                "shipping_method_id"=> 1
              }
            ],
            "shipping_method"=> {
              "name"=> "UPS Ground (USD)"
            },
            "inventory_units"=> [
              {
                "id"=> 13,
                "state"=> "on_hand",
                "variant_id"=> 20,
                "order_id"=> 5,
                "shipment_id"=> 5,
                "return_authorization_id"=> nil
              },
              {
                "id"=> 12,
                "state"=> "on_hand",
                "variant_id"=> 20,
                "order_id"=> 5,
                "shipment_id"=> 5,
                "return_authorization_id"=> nil
              },
              {
                "id"=> 10,
                "state"=> "on_hand",
                "variant_id"=> 8,
                "order_id"=> 5,
                "shipment_id"=> 5,
                "return_authorization_id"=> nil
              }
            ]
          }
        ],
        "adjustments"=> [
          {
            "id"=> 16,
            "amount"=> "5.0",
            "label"=> "Shipping",
            "mandatory"=> true,
            "eligible"=> true,
            "originator_type"=> "Spree::ShippingMethod",
            "adjustable_type"=> "Spree::Order"
          },
          {
            "id"=> 20,
            "amount"=> "5.0",
            "label"=> "Shipping",
            "mandatory"=> true,
            "eligible"=> true,
            "originator_type"=> "Spree::ShippingMethod",
            "adjustable_type"=> "Spree::Order"
          },
          {
            "id"=> 22,
            "amount"=> "5.0",
            "label"=> "North America 5.0",
            "mandatory"=> false,
            "eligible"=> true,
            "originator_type"=> "Spree::TaxRate",
            "adjustable_type"=> "Spree::Order"
          }
        ],
        "credit_cards"=> [
          {
            "id"=> 2,
            "month"=> "7",
            "year"=> "2013",
            "cc_type"=> "visa",
            "last_digits"=> "1111",
            "first_name"=> "Brian",
            "last_name"=> "Quinn",
            "gateway_customer_profile_id"=> "BGS-414100",
            "gateway_payment_profile_id"=> nil
          }
        ]
      }.merge(args)
    end

    def product_without_variants(sku = 'ROR-TS')
      {
        "name"=> "Ruby on Rails T-Shirt",
        "description"=> "Some description text for the product.",
        "available_on"=> "2012-11-20T00:00:00-05:00",
        "external_ref"=> "",
        "sku"=> sku,
        "price"=> 31,
        "cost_price"=> 21,
        "url"=> "http://example.com/products/ruby-on-rails-tshirt",
        "taxons"=> [
          [ "Categories",  "Clothes", "T-Shrits" ],
          [ "Brands", "Ruby on Rails" ],
          [ "Brands", "Open Source" ]
        ],
        "options"=> [ "color", "size" ]
      }
    end

    def product(sku = 'ROR-TS')
      {
        "name"=> "Ruby on Rails T-Shirt",
        "description"=> "Some description text for the product.",
        "available_on"=> "2012-11-20T00:00:00-05:00",
        "external_ref"=> "",
        "sku"=> sku,
        "price"=> 31,
        "cost_price"=> 21,
        "url"=> "http://example.com/products/ruby-on-rails-tshirt",
        "taxons"=> [
          [ "Categories",  "Clothes", "T-Shrits" ],
          [ "Brands", "Ruby on Rails" ],
          [ "Brands", "Open Source" ]
        ],
        "options"=> [ "color", "size" ],
        "variants"=> [
          {
            "name"=> "Ruby on Rails T-Shirt XL",
            "sku"=> "#{sku}-v-1",
            "price"=> 35,
            "cost_price"=> 22,
            "weight"=> nil,
            "demensions"=> {
              "height"=> nil,
              "width"=> nil,
              "depth"=> nil
            },
            "upc"=> "849231000874",
            "options"=> {
              "color"=> "GREY",
              "size"=> "XL"
            }
          },
          {
            "name"=> "Ruby on Rails T-Shirt SML",
            "sku"=> "#{sku}-v-2",
            "price"=> 35,
            "cost_price"=> 22,
            "weight"=> nil,
            "demensions"=> {
              "height"=> nil,
              "width"=> nil,
              "depth"=> nil
            },
            "upc"=> "849231000875",
            "options"=> {
              "color"=> "GREY",
              "size"=> "SML"
            },
            "images"=> [
              {
                "url"=> "http://emaple.com/p/1//v/4/image.jpg",
                "position"=> 1,
                "title"=> "Ruby on Rails T-Shirt - Grey Small",
                "type"=> "thumbnail",
                "demensions"=> {
                  "height"=> 220,
                  "width"=> 100
                }
              }
            ]
          }
        ],
        "images"=> [
          {
            "url"=> "http://emaple.com/p/1/image.jpg",
            "position"=> 1,
            "title"=> "Ruby on Rails T-Shirt",
            "type"=> "thumbnail",
            "demensions"=> {
              "height"=> 220,
              "width"=> 100
            }
          }
        ]
      }
    end

    def return_authorization
      JSON.parse(IO.read("#{File.dirname(__FILE__)}/messages/return_authorization.json")).with_indifferent_access[:return_authorization]
    end

    def new_credit_memo
      JSON.parse(IO.read("#{File.dirname(__FILE__)}/messages/new_credit_memo.json")).with_indifferent_access
    end
  end
end
