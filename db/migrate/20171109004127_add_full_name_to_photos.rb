class AddFullNameToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :full_name, :text
  end
end
