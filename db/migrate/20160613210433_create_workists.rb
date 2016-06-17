class CreateWorkists < ActiveRecord::Migration
  def change
    create_table :workists do |t|
      t.string :task
      t.text :description

      t.timestamps null: false
    end
  end
end
