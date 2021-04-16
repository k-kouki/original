class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,          null: false
      t.integer :price,        null: false
      t.text :text,            null: false
      t.integer :gender_id,    null: false
      t.references :admin,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
