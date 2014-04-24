class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @new_item = Item.new
  end

  def create
    @new_item = Item.new(item_params)

    if @new_item.save
      redirect_to items_path
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to items_path
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.delete
      redirect_to items_path
    end
  end

  def items_sold
    @items = Item.where(:sold => true)
  end

  def items_for_sale
    @items = Item.where(:sold => false)
  end

  def mark_as_sold
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to items_path
    end
  end

  def download_item_image
    @item = Item.find(params[:id])
    file = @item.item_image
    send_file file.path
  end

  private

  def item_params
    params.require(:item).permit!
  end
end
