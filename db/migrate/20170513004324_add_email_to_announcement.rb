class AddEmailToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :email, :string
  end
end
