class ChargesController < ApplicationController

  def new
    @escapes = Escape.all
    @escape = Escape.find(params[:escape_id])
  end

  def create
    @escape = Escape.find(params[:escape_id])
    # Amount in cents
    @amount = @escape.dollar_amount*100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount.to_i,
      :description => 'Rails Stripe customer',
      :capture => false,
      :currency    => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def escape_params
    params.require(:escape).permit(:user_id, :rescue_title, :dollar_amount, :location, :description, :requirements)
  end
end
