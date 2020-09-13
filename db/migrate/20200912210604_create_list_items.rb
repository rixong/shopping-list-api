class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.string :quantity
      t.boolean :active, :default => true
      t.integer :list_id
      t.integer :item_id

      t.timestamps
    end
  end
end
