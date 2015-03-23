class RemoveColumnFromTable < ActiveRecord::Migration
  def change
    remove_column :apples, :quantity
  end
end
