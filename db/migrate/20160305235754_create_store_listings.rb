class CreateStoreListings < ActiveRecord::Migration[5.0]
  def change
    create_table :store_listings do |t|
      t.decimal :price_in_cents

      t.timestamps
    end
  end
end
