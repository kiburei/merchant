class Address < ActiveRecord::Base
  #validates: phone: {presence: true}
  belongs_to :users
  has_many :orders

  def to_s
    [line1 ,city].compact.join
  end
end
