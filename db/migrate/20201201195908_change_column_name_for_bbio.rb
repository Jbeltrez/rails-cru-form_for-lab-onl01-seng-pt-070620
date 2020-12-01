class ChangeColumnNameForBbio < ActiveRecord::Migration[5.0]
  def change
    rename_column :artists, :bbio, :bio
  end
end
