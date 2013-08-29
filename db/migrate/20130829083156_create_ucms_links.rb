class CreateUcmsLinks < ActiveRecord::Migration
  def change
    create_table :ucms_links do |t|
      t.string :name
      t.string :url
      t.string :image
      t.datetime :start_time
      t.datetime :end_time
      t.string :owner
      t.string :description

      t.timestamps
    end
  end
end
