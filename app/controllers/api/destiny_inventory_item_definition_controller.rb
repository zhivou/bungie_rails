class Api::DestinyInventoryItemDefinitionController < ApplicationController

  def destiny_inventory_all
    render json: DestinyInventoryItemDefinition.all
  end

  def destiny_inventory_item
    render json: DestinyInventoryItemDefinition.find_by_sql("
      SELECT json FROM DestinyInventoryItemDefinition
      WHERE json LIKE '%#{params[:item_id]}%'
    ")
  end
end
