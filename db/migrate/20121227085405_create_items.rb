class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.timestamps
    end
      add_attachment :items, :file
  end
end
