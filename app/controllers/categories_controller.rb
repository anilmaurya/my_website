class CategoriesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    if request.post?
      @category.name = params[:category][:name]
      @category.user_id = current_user.id
      if @category.save
        redirect_to '/'
      else
        redirect_to '/categories/new'
      end
    end
  end

end
