class ItemsController < ApplicationController
  
  def new
    @item = Item.new  
    @category = params[:category].to_i
  end

  def create
    @item = Item.new
    if @item.update_attributes(params[:item])
      redirect_to "/categories/#{ @item.category_id }"
    else
      redirect_to "items/new"
    end
  end
   
  def destroy
    @item = Item.find(params[:id])
    @item.destroy unless @item.nil?
    redirect_to "/categories"
  end
end
