class CreateGroupEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :group_events do |t|
      t.date :startdate
      t.string :name
      t.text :description
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
