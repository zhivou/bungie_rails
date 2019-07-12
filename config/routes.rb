Rails.application.routes.draw do
  namespace :api do
    get 'items-all', to: 'destiny_inventory_item_definition#destiny_inventory_all'
    get 'item/:item_id', to: 'destiny_inventory_item_definition#destiny_inventory_item'
  end
end
