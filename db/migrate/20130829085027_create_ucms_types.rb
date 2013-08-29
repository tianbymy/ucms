class CreateUcmsTypes < ActiveRecord::Migration
  def change
    create_table :ucms_types do |t|

      t.timestamps
    end
  end
end
