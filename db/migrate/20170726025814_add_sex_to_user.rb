class AddSexToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sexes, :integer
  end
end
