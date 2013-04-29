class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product
  accepts_nested_attributes_for :product
end
