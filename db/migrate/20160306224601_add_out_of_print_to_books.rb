class AddOutOfPrintToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :out_of_print, :string, default: 'false'
  end
end
