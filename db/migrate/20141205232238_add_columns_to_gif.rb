class AddColumnsToGif < ActiveRecord::Migration
  def change
    add_column :gifs, :title, :string
    add_column :gifs, :caption, :string
  end
end
