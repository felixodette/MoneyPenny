class AddGroupToSpending < ActiveRecord::Migration[7.0]
  def change
    add_reference :spendings, :group, null: false, foreign_key: true, on_delete: :cascade
  end
end
