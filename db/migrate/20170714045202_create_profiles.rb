class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|

      t.string   :nickname
      t.string   :age
      t.string   :blood
      t.string   :brother
      t.string   :birthplace
      t.string   :language
      t.string   :education
      t.string   :job
      t.integer  :height
      t.string   :bodytype
      t.boolean  :marital
      t.boolean  :children
      t.boolean  :housemate
      t.datetime :holiday
      t.boolean  :liquor
      t.boolean  :tobacco
      t.boolean  :marriagedesire
      t.string   :wantchild
      t.string   :household
      t.string   :meet
      t.string   :datecost
      t.string   :personality
      t.string   :sociability
      t.text   :body
      t.timestamps
      
    end
  end
end
