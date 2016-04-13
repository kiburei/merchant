class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  belongs_to :user
  belongs_to :address


  def total
    return order_items.inject(0) { |sum, p| sum + p.subtotal }
  end


#track payments already done and show balance and progress
  def target
    if payment.to_s.to_d < 1
      @target = total
    else
      @target = total - payment.to_s.to_d

    end
  end

  def percent
    @percent = "70"
  end

end
