class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :time_start
      t.datetime :time_end
      t.integer :capacity
      t.string :picture
      t.string :description
      t.string :location_title
      t.string :address_number
      t.string :address_street
      t.string :address_postcode
      t.string :address_city
      t.string :address_contry
      t.string :distinguishing_feature
      t.string :wedding_list
      t.string :category
      t.string :keywords
      t.integer :price
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
