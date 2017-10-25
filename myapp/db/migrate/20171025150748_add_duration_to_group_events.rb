class AddDurationToGroupEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :group_events, :duration, :number
  end
end
