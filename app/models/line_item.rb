class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product
  attr_accessible :product

 def total_price 
 	product.price * quantity
 end
end
