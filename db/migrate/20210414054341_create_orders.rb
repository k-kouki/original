class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user,       foreign_key: true
      t.references :item,       foreign_key: true
      t.integer    :size_id,       null: false
      t.integer    :count,      null: false
      t.timestamps
    end
  end
end
