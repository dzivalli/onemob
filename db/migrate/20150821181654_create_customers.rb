class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
