class CreateSpices < ActiveRecord::Migration[6.0]
  def change
    create_table :spices do |t|
      t.string :item_name,       null: false 
      t.date   :limit,           null: false 
      t.text   :memo,            null: false 
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
