class CreateUcmsComments < ActiveRecord::Migration
  def change
    create_table :ucms_comments do |t|
      t.string :name
      r.string :content
      t.integer :user_id
      t.timestamps
    end
  end
end
