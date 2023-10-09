class AddColumnProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :hotel_name, :string
    add_column :products, :contents, :text
  end
end
