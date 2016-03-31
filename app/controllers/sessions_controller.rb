class SessionsController < ApplicationController
  def create
    #render text: request.env["omniauth.auth"]
    @user = User.find_or_create_by_auth(request.env["omniauth.auth"])
    session[:user_id] = @user
    load_order
    @order.update_attributes(user: @user)
     redirect_to products_path, notice: "logged in"
  end
  def destroy
    session[:user_id] = nil
    session[:order_id] = nil
    redirect_to root_path
  end
end
