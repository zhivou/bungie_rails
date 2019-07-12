class Api::DestinyInventoryItemDefinitionController < ApplicationController

  def destiny_inventory_all
    render json: DestinyInventoryItemDefinition.all
  end

  def destiny_inventory_item
    render json: DestinyInventoryItemDefinition.find(params[:item_id]).json
  end
end
