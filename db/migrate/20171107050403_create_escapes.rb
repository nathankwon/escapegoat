class CreateEscapes < ActiveRecord::Migration[5.1]
  def change
    create_table :escapes do |t|
      t.integer :user_id
      t.text :rescue_title
      t.decimal :dollar_amount
      t.string :location
      t.text :description
      t.text :requirements

      t.timestamps
    end
  end
end
