class Address < ActiveRecord::Base
  #validates: phone: {presence: true}
  belongs_to :users
  has_many :orders
end
