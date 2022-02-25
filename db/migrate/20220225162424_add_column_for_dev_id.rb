class AddColumnForDevId < ActiveRecord::Migration[6.1]
  def change
    add_column :freebies, :dev_id, :integer
  end
end
