class RenameZipcodeToZip < ActiveRecord::Migration[5.0]
  def change
    rename_column :galleries, :zipcode, :zip
  end
end
