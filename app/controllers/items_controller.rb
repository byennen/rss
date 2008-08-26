class ItemsController < ApplicationController
  
  before_filter :login_required
  before_filter :load_item
  
  def show
  end

  private
  
  def load_item
    @item = Item.find(params[:id]) if params[:id]
  end
  
end
