class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start
      t.datetime :end
      t.decimal :latitude
      t.decimal :longitude
      t.string :organization
      t.string :location
      t.boolean :published

      t.timestamps
    end
  end
end
