class AddTypeIdToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :type_id, :integer
  end
end
