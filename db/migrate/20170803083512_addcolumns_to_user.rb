class AddcolumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :age, :integer
    add_column :users, :blood, :string
    add_column :users, :brother, :string
    add_column :users, :birthplace, :string
    add_column :users, :language, :string
    add_column :users, :education, :string
    add_column :users, :job, :string
    add_column :users, :height, :integer
    add_column :users, :bodytype, :string
    add_column :users, :marital, :string
    add_column :users, :children, :string
    add_column :users, :housemate, :string
    add_column :users, :holiday, :string
    add_column :users, :liquor, :string
    add_column :users, :tobacco, :string
    add_column :users, :marriagedesire, :string
    add_column :users, :wantchild, :string
    add_column :users, :household, :string
    add_column :users, :meet, :string
    add_column :users, :datecost, :string
    add_column :users, :personality, :string
    add_column :users, :sociability, :string
    add_column :users, :body, :string
    add_column :users, :live, :string
    add_column :users, :income, :string
    add_column :users, :country, :string
    add_column :users, :hobby, :string

  end
end
