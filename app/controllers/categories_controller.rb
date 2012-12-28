class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  def index
    redirect_to '/'
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    if request.post?
      @category.update_attributes(params[:category])
      @category.user_id = current_user.id
      if @category.save
        redirect_to '/'
      else
        redirect_to '/categories/new'
      end
    end
  end

  def show
    @category = Category.find( params[:id])
    @items = @category.items
    
  end

end
