class ChargesController < ApplicationController

  def index
  end

  def new
  end

  def create
    #amount in cents
    @amount = 500
    customer = Stripe::customer.create(
    :email => params[:stripeEmail],
    :source => params[:stripeToken]
    )

    charge = Stripe::charge.create(
    :customer => customer.id,
    :amount => @amount,
    :description => 'Rails Stripe Customer',
    :currency => 'KES'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
