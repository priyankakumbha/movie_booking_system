class ChargesController < ApplicationController
  def new
    @moneyPay=200
end


def create
  # Amount in cents
  @amount = 200
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

redirect_to charge_path(1)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path

end

def show
end


end
