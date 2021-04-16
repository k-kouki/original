class ItemsController < ApplicationController

  def index
    
  end

  def product
    @item = Item.includes(:admin).order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:name,:text,:gender_id,:image,:price).merge(admin_id: current_admin.id)
  end



end
