class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :set_products

  def set_products
  	@products = Product.all
  end
end
