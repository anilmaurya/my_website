class HomeController < ApplicationController
  
  def index
    @categories = Category.find(:all, :limit => 6)
  end
  
  def custom
    @categories = current_user.categories
    render 'index.html.haml'
  end

  def show_all
    @categories = Category.find(:all, :limit => 6)
    render 'index.html.haml'
  end

end
