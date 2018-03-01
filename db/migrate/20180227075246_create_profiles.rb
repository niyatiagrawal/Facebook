class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :picture
      t.text :bio
      t.string :country

      t.timestamps
    end
  end
end
