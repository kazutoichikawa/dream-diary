class CreateDreams < ActiveRecord::Migration[6.1]
  def change
    create_table :dreams do |t|
      t.string :title,       null:false
      t.string :text,       null:false
      t.timestamps
    end
  end
end
