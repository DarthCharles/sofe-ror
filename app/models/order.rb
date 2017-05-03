class Order < ApplicationRecord

  belongs_to :customer, optional: true
  belongs_to :product

end
