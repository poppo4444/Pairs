class AddColumnToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :user_id,:integer,null: false,foreign_key: true
  end
end
