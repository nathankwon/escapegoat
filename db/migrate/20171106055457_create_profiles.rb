class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :image
      t.integer :user_id
      t.text :first_name
      t.text :last_name
      t.text :email

      t.timestamps
    end
  end
end
