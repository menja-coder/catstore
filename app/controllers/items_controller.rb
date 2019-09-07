class ItemsController < ApplicationController

	def index
    @items  = Item.all
    end
    def show

    	@item = Item.find(params[:id])
			session[:item_id]=params[:id]

    end
end
