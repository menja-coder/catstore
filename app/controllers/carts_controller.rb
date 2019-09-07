class CartsController < ApplicationController
  def create
    @u=current_user.id
    @i=session[:item_id]
  if current_user.cart == nil
      @cart = Cart.create(user_id: @u)
    end
        @cart = JoinCartItem.create(cart_id:current_user.cart.id, item_id: @i)
  if @cart.save
       redirect_to  cart_path(current_user.cart.id)
     else
     puts "Try again"
     end
 end

 def show
   @cart = Cart.find(params[:id])
   @tab= @cart.items
   allitems = current_user.cart.items
   c = 0
   @nbr = allitems.length
   session[:nbr] = @nbr
   allitems.each do |item|
       c += item.price
       @count = c
     end
  end
 def destroy
  @cart = Cart.find(current_user.cart.id)
  @join = @cart.join_cart_items[0].destroy

  redirect_to cart_path
 end
end
