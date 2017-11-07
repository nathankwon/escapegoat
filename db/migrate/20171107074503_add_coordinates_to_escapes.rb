class AddCoordinatesToEscapes < ActiveRecord::Migration[5.1]
  def change
    add_column :escapes, :latitude, :float
    add_column :escapes, :longitude, :float
  end
end
