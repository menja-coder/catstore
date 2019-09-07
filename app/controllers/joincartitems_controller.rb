class JoincartitemsController < ApplicationController

  def create
    @u=current_user.id
    @i=session[:item_id]


    @cart = JoinCartItem.create(cart_id: @u, item_id: @i)
     if @cart.save
       redirect_to '/'
     else
     puts "Try again"
     end
  end
  def show


  end

end
