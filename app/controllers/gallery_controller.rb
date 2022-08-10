class GalleryController < ApplicationController
  before_action :admin_loggedin

  def index
    @jewellary_items =  Product.all
  end

  def search
    keyword =  params[:q]
    @jewels = Product.where("name LIKE ?", "%#{keyword}%")
 end

  private
    
  def admin_loggedin
    if session[:username].nil?
      flash[:notice] = 'Please login'
      redirect_to admin_login_path
    end
  end
end
