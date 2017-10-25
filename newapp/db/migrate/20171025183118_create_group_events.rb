class CreateGroupEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :group_events do |t|
      t.string :name
      t.text :description
      t.date :startdate
      t.decimal :duration
      t.string :status
      t.date :enddate
      t.string :location
      t.timestamps
    end
  end
end
