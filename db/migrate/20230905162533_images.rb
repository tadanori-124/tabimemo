class Images < ActiveRecord::Migration[7.0]
  def up
    add_column :products, :new_image, :text
  end
end
