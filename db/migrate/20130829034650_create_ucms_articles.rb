class CreateUcmsArticles < ActiveRecord::Migration
  def change
    create_table :ucms_articles do |t|
      t.string :name
      t.string :content
      t.timestamps
    end
  end
end
