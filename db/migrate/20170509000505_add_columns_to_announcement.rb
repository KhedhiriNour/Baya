class AddColumnsToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :name, :string
    add_column :announcements, :price, :float
    add_column :announcements, :description, :text
    add_column :announcements, :color, :string
    add_column :announcements, :km, :integer
    add_column :announcements, :year, :date
  end
end
