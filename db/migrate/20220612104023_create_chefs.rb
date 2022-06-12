class CreateChefs < ActiveRecord::Migration[6.1]
  def change
    create_table :chefs do |t|
      t.string :first_name
      t.string :last_name
      t.integer :stars

      t.timestamps
    end
  end
end
