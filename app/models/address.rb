class Address < ActiveRecord::Base
  #validates: phone: {presence: true}
  belongs_to :user
  has_many :orders

  def to_s
    [hood, landmark].compact.join
  end
end
