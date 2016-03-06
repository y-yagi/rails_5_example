class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.float :price_in_bitcoins

      t.timestamps
    end
  end
end
