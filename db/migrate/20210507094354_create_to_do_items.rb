class CreateToDoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_items do |t|
      t.string :title
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
