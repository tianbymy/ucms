class CreateUcmsAds < ActiveRecord::Migration
  def change
    create_table :ucms_ads do |t|
      t.string :name
      t.string :ancestry
      t.integer :size
      t.string :url
      t.string :images
      t.datetime :start_time
      t.datetime :end_time
      t.string :owner
      t.string :description
      t.timestamps
    end
  end
end
