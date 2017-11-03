class CheckoutController < ApplicationController
  
  # post /checkout  
  def create
    
    # Look up the product so we can:
    # - Set the price
    # - Grab the owner's stripe ID to distribute funds
    @product = Product.find(params[:product_id])


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@product.price * 100).to_i,
      :description => @product.title,
      :currency    => 'aud'
    )

    # Log the response from Stripe
    puts charge.inspect

    # Success!
    redirect_to checkout_thankyou_path

    rescue Stripe::CardError => e
      flash[:notice] = e.message
      redirect_to @product
  end

  def thankyou
  end
end
