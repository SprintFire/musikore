class AddFieldsToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :title, :string
    add_column :tracks, :description, :string
  end
end
