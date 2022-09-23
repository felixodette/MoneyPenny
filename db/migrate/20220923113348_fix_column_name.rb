class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :"groups", :"user_id", :"author_id"
    rename_column :"spendings", :"user_id", "author_id"
  end
end
