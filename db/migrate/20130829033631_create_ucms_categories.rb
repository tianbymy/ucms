class CreateUcmsCategories < ActiveRecord::Migration
  def change
    create_table :ucms_categories do |t|
      t.string :name
      t.string :ancestry
      t.timestamps
    end
  end
end
